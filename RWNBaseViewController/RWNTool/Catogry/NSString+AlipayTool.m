//
//  NSString+AlipayTool.m
//  gairui
//
//  Created by Michael on 16/8/31.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "NSString+AlipayTool.h"

@implementation NSString (AlipayTool)

+ (NSString *)partner
{
    //旅行用车测试账号
//    return @"2088121307786135";
    //瑞盖真实账号
    return @"2088521153996960";
}

+ (NSString *)seller
{
//    return @"1802946500@qq.com";
    return @"yinxin2016@qq.com";
}

+ (NSString *)privateKey
{
    return @"MIICXAIBAAKBgQCmtKSuxSRpo++3giA4hJxsRh/chB9AWaKFuIk5he4V7/fPH4wXKpb8bxoZu9vKYbzCVT8meNQuf+KPVqguXh+fA8lvPjAfERuMrDgC76C5tuNLfCn5LbGaO/iGMT730fLh7fE1OR/PyNmEbiCHpiiF+PMjCoAUnO4PIc2gSt1JKwIDAQABAoGAFMBb152WwMe1aWR7Wk23owq/oJWZxkriHj8wZca0MmrisBe/OosErHuwBhAKdhDgjFhMOh/EWd11eF5TJSJ2UQN5lkScVreOGKFdar2PJsw14JypJJ8/ZyMvgfbj9gaKNqj9JYIB0R7J+qbMBowIAiegwvXQ7FwDf9AQQErHlWECQQDd4iVltHs5d3f8N6FVU9ylLsajcsgeFmo+WLUup2qsg8D4iKDiBZgd/GpXV41tbKuN2QyIJGnbBnztHFNmka1pAkEAwFaSI7a3/eY5e2ge+7U5GJZuTHQfidzits9qYl3okpErhwTWZA1hAfDThZlM0AgqApOzBAZeuZ/ncsK8krXrcwJBANaqTT4Zn8IYWGgWtiqkaOsS1zEZAo1BaGaLUjch1+2xxodtQCGMAgC4zXVVCkocgdlJbXtlp1g07bZE2ld4h0kCQEAQVcrpgG1kcr8FFlTWrvbenEyA3URpO2aSvaeYCfBPxETLurFGt4oS8hFs12XvYjbLhXQQvxprBYd3D6J6T7sCQBV5If2Ib1cCOb5fIZn1g8CDRa6BtQKlzG2S/gWDAOU8+lrTIzby9hZiQTB8DuLVFQ+YazxlqA3SV59QfyR5LIQ=";
//    return @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMqLGqczkAbihPICndvFF28Z4JuqUh5RgZ4B99umP/Mp+rkNmwjWWz7TBmsMqoC+FOv6Pgzw1JMvXcPe5cAJEZiZLTMXeiAGcj/adjdMmjgxDeZ6ZzKTd7Zq83tqsAl36IuRuSAhOI0W+PwC3xT5hoRGQL4sSLwg/pUOxxpdDulTAgMBAAECgYAadHDWxfVZ8NxMf+r+eY/GAytDKcvwCdVUPg2RsvVHXYRSB2Tokpb4bbe4476hcjJpYBYaupoJX3Zvzv1TR9v0RuisTxwPzSinKJVY10qjFehbT+LdEeoMxxL8Mvi08Kc8rDwiyL+f1oJnfyyBbwm8FICBnKKkcUO8ylULxMswAQJBAPUE13RcDenpbB6e3kmLW1+SoNJNRrYWC74qpp+Jepd5/OcuFfAOWcU+89FNQteONa7LGLUkuhAxsrIzFW6wtoECQQDTnu5OK/reE3bd62b9NkSjM/A8fgUVJ1QIL5yhX733/jBMA6b+2Y4NO8Qy4quB0LyzUJ5fkRMsyZfFy1fli/3TAkEA2CByMLi2qTt2XLhEWdksO2yqoXb6xclCiHc0zQtG8PDw7bdQMJVoCD5Uca5WJK/TmKCb5cVEvt4nw1qeMCp+gQJBAJjp8tDRvsjRz8az3wuBNz+mvCU5+no6nOH9ZXTGNgMIzeVfjkAA/EBbu335hGydZH099/KeZfirAtyN/smDyrkCQCH0QRHk8rKIXdnAwHxssHHm2pTlu9jio5ynBLNEvlmAI236bjlImGjcFa4D+kXxXgM072F1Ou94wRZmJf5uQAg=";
//    return @"MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAO8w+AD0TIy/pNluZLhmffTsYi25bfXYSvvdDIThDku8vqnbhZd4v6myhC/esSWaUSS38OEXlu8J508incIdY7NsbawkxWWNGKt7rEwKt5WxHdBqWOTCJF/zzRh8tLFRuJCDgkHAh+qk4gKYunJfiF/ZojjeRAOqjF8KnVjhrN4RAgMBAAECgYEA4lvgR97qVsTCuDY9wTjVeKT/4K+8PU184M/3mgT2J3yun0atLYTLNUhIypif4qsgoXQl1I8jeoJP0dc7nsl7YCwd1wVyd8uQNwMCY71bpsZ/BI39x712wWjCLq4VzChgu2Z5BusNlaLlXcwH9Lj/S0o+dyF76iXk6qxLAUVrKLECQQD4lyCZtU8lgBw1ZmN4RKfDoyEgzyM9WWxRf6xVpASZ8PjQqAseU8CWndbELhJs8xqkb/Ivn62pp6cWNu92rB+VAkEA9lIfK8Y+PpVuw6tATlQ4ISh3Vk7ApIUVcPqYdi6BC/rPJf/OaRd8nE1jtWK+lx5n2lowU79DFD5W7O86aBdVjQJBAMyb55NcbnaZSZ6SVdEKAWO/g2bz1zeJwOQbyAb9Z2QluUZU6kHeAah25ey3VychuY4bLiYQsenwOlDIirUM2zkCQQDwAqDg1G/+Jzkga5NjP2jZ1kZB0MahCBQWW/eG4FVZyO9jRVhoyjvfSQEo0qiHM1daSZrhX3ILHZsxjwDIQERZAkAS0aZZFhiuGvq2mBQhfEfWqmRCPOWh2EIXlO4t74J5BhQ13iCFxnpIQpvSM5/xva891zZ6q482PveQPZlaS4UJ";

//    return @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL743CMWMoLo1nM1/Q1Db5d0sx+i5BI2wCOHeYY+mjFJ7CI5zb6knBE9Qmr1MAniHKg5h+bxX8JQwr43z0YJAjNBO96SXILZZKEgYvqQMOIRpff3KsnwIif5K85X0JGd7lNmp30jPamiYhPwFlhlLtf2qn+04O2YPfY+rE8gasg/AgMBAAECgYACs4RxnpvCTEbURFw69sw6STVLakNtmoanOgBXDMWjktcbONQXMT7f44zv9F3kleUv3/hzJNDk772BcUqmQ/Ra/PZfJLSeNuPbAyrlz6IJfgQlZPI7rAMgUWbBw3n/q+Qs50fqjOOYvxiBKGIlONqasoUebXXuPi27zUZ4rP1zoQJBAPIIeG50KJYMXvqinChOgv1zvepATSDfwFcalQW+lcfXuHouuovIb9y+fuu4LHNz3lDKcTCWHH4fySefdn5lOlECQQDJ/hIqmfICtD8adCeUY02qhuT3wStGVwaOKcGt0iZlLmldeIfSyqjfh1gESL17B5hnykEri8vTJr4SR66HeaWPAkBuLeD1FzfqppMOMbw4tRT4YBoSa1cxIeqjPFyektYIdXFrXZ5aR9J0gNuyXtMNc6++w4mnfo5V9A5UVUlR3K8hAkEAtNyK9Zw8JxGvgwdIPUShUTRRpklPbz8S/o4C/pmxiV2COJBoxWRyyxsLw2JCTvvhCeX+bnhQ+/Kvs/x9GI7inwJBANvCPaKQjY42mFk0uvWGMly3eDZgLNwPPpjSx3V0z6FrPPlRZ9DPJzBKYPy9IYMXi9LGZaiOND7iwhK6SyDVeYA=";
//    return @"MIICXgIBAAKBgQDvMPgA9EyMv6TZbmS4Zn307GItuW312Er73QyE4Q5LvL6p24WXeL+psoQv3rElmlEkt/DhF5bvCedPIp3CHWOzbG2sJMVljRire6xMCreVsR3QaljkwiRf880YfLSxUbiQg4JBwIfqpOICmLpyX4hf2aI43kQDqoxfCp1Y4azeEQIDAQABAoGBAOJb4Efe6lbEwrg2PcE41Xik/+CvvD1NfODP95oE9id8rp9GrS2EyzVISMqYn+KrIKF0JdSPI3qCT9HXO57Je2AsHdcFcnfLkDcDAmO9W6bGfwSN/ce9dsFowi6uFcwoYLtmeQbrDZWi5V3MB/S4/0tKPnche+ol5OqsSwFFayixAkEA+JcgmbVPJYAcNWZjeESnw6MhIM8jPVlsUX+sVaQEmfD40KgLHlPAlp3WxC4SbPMapG/yL5+tqaenFjbvdqwflQJBAPZSHyvGPj6VbsOrQE5UOCEod1ZOwKSFFXD6mHYugQv6zyX/zmkXfJxNY7VivpceZ9paMFO/QxQ+VuzvOmgXVY0CQQDMm+eTXG52mUmeklXRCgFjv4Nm89c3icDkG8gG/WdkJblGVOpB3gGoduXst1cnIbmOGy4mELHp8DpQyIq1DNs5AkEA8AKg4NRv/ic5IGuTYz9o2dZGQdDGoQgUFlv3huBVWcjvY0VYaMo730kBKNKohzNXWkma4V9yCx2bMY8AyEBEWQJAEtGmWRYYrhr6tpgUIXxH1qpkQjzlodhCF5TuLe+CeQYUNd4ghcZ6SEKb0jOf8b2vPdc2equPNj73kD2ZWkuFCQ==";
}

@end
