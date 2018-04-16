#include <SPI.h>
#include <Servo.h>
#include <MFRC522.h>     // 引用程式庫
 
#define RST_PIN      A0        // 讀卡機的重置腳位
#define SS_PIN       10        // 晶片選擇腳位
 
MFRC522 mfrc522(SS_PIN, RST_PIN);  // 建立MFRC522物件
Servo sA;
Servo sB;
Servo sC;

enum Mode{
  GAIN,
  LOSE,
  NORM
};

enum Health{
  hBlood,
  hDan,
  lOil,
  Pain,
  None
};

struct RFID{
  char* name;
  byte id[4];
  bool gender; // 1: 女  0:男
  int  age, height, weight, cal;
  Mode mode;
  Health health;
};

struct RFID human[] = {
  {"Jennifer", {226, 32, 212, 36}, 1, 20, 155, 40, 2111, GAIN, None},
  {"Vivian", {210, 149, 164, 36}, 1, 20, 170, 55, 1837, NORM, None}
};

void setup() {
  Serial.begin(9600);
  SPI.begin();

  pinMode(8, OUTPUT);
  sA.attach(15);
  sB.attach(16);
  sC.attach(17);
  mfrc522.PCD_Init();   // 初始化MFRC522讀卡機模組

  sA.write(0);
  sB.write(0);
  sC.write(0);
}

void print(RFID); 

void loop() {

  
    // 確認是否有新卡片
    if (mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()) {

      byte *id = mfrc522.uid.uidByte;
      bool found = false;
      
      for(int i=0; i<2; ++i){
        if(memcmp(human[i].id, id, mfrc522.uid.size) == 0){
          print(human[i]);
          found = true;
        }
      }


      if(found){
        delay(200);
        for(int i=0; i<3; ++i){
          digitalWrite(8, HIGH);
          delay(200);
          digitalWrite(8, LOW);
          delay(200);
        }
         
        //下
        for(int i=0; i<61; ++i){
          sB.write(i);
          delay(10);
        }
        delay(1000);
       
        //夾
        for(int i=0; i<101; ++i){
          sA.write(i);
          delay(5);
        }
        delay(1000);
  
        //上
        for(int i = 60; i>=0; --i){
          sB.write(i);
          delay(10);
        }
        delay(1000);
  
        //轉
        for(int i=0; i<61; ++i){
          sC.write(i);
          delay(15);
        }
        delay(1000);
  
        //下
        for(int i=0; i<31; ++i){
          sB.write(i);
          delay(10);
        }
        delay(1000);  
  
        //放
        for(int i=100; i>=0; --i){
          sA.write(i);
          delay(5);
        }
        delay(1000);
  
        //上
        for(int i = 30; i>=0; --i){
          sB.write(i);
          delay(10);
        }
        delay(1000);      
  
  
        //轉
        for(int i=60; i>=0; --i){
          sC.write(i);
          delay(15);
        }
        delay(1000);
      } 

      mfrc522.PICC_HaltA();  // 讓卡片進入停止模式
    }
  else Serial.print("/");
    digitalWrite(8, LOW);

  

}

void print(RFID h){
  Serial.println();
  Serial.print("Name:   "); Serial.println(h.name);
  Serial.print("gender: "); 
  if(h.gender == 1) Serial.println("Female");
  else Serial.println("Male");
  Serial.print("Height: "); Serial.println(h.height);
  Serial.print("Weight: "); Serial.println(h.weight);
  Serial.print("Age:    "); Serial.println(h.age);
  Serial.print("Mode:   "); 
  switch(h.mode){
    case GAIN: Serial.println("gain weight"); break;
    case LOSE: Serial.println("lose weight"); break;
    case NORM: Serial.println("normal"); break;
  }
  Serial.print("Health: ");
  switch(h.health){
    case hBlood: Serial.println("高血壓"); break;
    case hDan: Serial.println("高膽固醇"); break;
    case lOil: Serial.println("少油"); break;
    case Pain: Serial.println("痛風"); break;
    case None: Serial.println("無"); break;
  }
  Serial.print("Cal:    "); Serial.println(h.cal);
  Serial.println(); 
}

