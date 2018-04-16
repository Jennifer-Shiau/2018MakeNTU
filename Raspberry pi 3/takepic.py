# -*- coding:utf8 -*-
# !/usr/bin/python3
import picamera
import pygame
import os
import time
import io
import sys
import RPi.GPIO as GPIO

pygame.init()
res = pygame.display.list_modes()
width, height = res[0]
screen = pygame.display.set_mode([width, height])

camera = picamera.PiCamera()
count = 0
nameList = ["高麗菜", "青江菜", "菠菜", "花椰菜", "海帶", "胡蘿蔔", "鹹蛋苦瓜", "茄子", "竹筍",
            "蔥燒豆腐", "番茄炒蛋", "蒸蛋", "豆干炒肉絲", "炸豬排", "香腸", "滷雞腿", "控肉", "蔥爆牛肉",
            "三杯雞", "炒蛤蜊", "秋刀魚", "清蒸雪魚", "吳郭魚"]
camera.start_preview()

GPIO.setmode(GPIO.BOARD)
LED = 36
GPIO.setup(LED,GPIO.OUT)

while count<23:
    pygame.display.update()
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_DOWN:
                GPIO.output(LED,GPIO.HIGH)
                camera.capture("./pictures/" + str(count+1) + nameList[count].decode('utf8') + ".jpg")
                count += 1
                GPIO.output(LED,GPIO.LOW)
            elif event.key == pygame.K_SPACE:
                camera.close()
                pygame.quit()
                #print("count = ", count)
                sys.exit(0)

GPIO.output(LED,GPIO.LOW)
camera.close()
pygame.quit()
#print("count = ", count)
#sys.exit(0)

os.system("./grive")
