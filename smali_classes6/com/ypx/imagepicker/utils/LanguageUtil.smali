.class public Lcom/ypx/imagepicker/utils/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static languageTransform(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "thai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "can"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "ka"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "th"

    return-object p0

    :pswitch_1
    const-string p0, "zh"

    return-object p0

    :pswitch_2
    const-string p0, "po"

    return-object p0

    :pswitch_3
    const-string p0, "kr"

    return-object p0

    :pswitch_4
    const-string p0, "jp"

    return-object p0

    :pswitch_5
    const-string p0, "sp"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xcae -> :sswitch_5
        0xd37 -> :sswitch_4
        0xd56 -> :sswitch_3
        0xe04 -> :sswitch_2
        0x17fd0 -> :sswitch_1
        0x364d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static switch2SystemLanguage(Ljava/lang/String;)Ljava/util/Locale;
    .locals 9

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "vi"

    const-string v2, "tr"

    const-string v3, "th"

    const-string v4, "pt"

    const-string v5, "nl"

    const-string v6, "es"

    const-string v7, "ar"

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "thai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "can"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0x13

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x12

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "sp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "po"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "ka"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v8, 0x8

    goto :goto_0

    :sswitch_e
    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_12
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_13
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_14
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_15
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v8, 0x0

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 67
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    .line 32
    :pswitch_0
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 54
    :pswitch_1
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 60
    :pswitch_2
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 52
    :pswitch_3
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 36
    :pswitch_4
    new-instance p0, Ljava/util/Locale;

    const-string v0, "RU"

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 63
    :pswitch_5
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 58
    :pswitch_6
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 44
    :pswitch_7
    sget-object p0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object p0

    .line 39
    :pswitch_8
    sget-object p0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    return-object p0

    .line 65
    :pswitch_9
    sget-object p0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    return-object p0

    .line 49
    :pswitch_a
    new-instance p0, Ljava/util/Locale;

    const-string v0, "in"

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 34
    :pswitch_b
    sget-object p0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    return-object p0

    .line 47
    :pswitch_c
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 41
    :pswitch_d
    sget-object p0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    return-object p0

    .line 29
    :pswitch_e
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 56
    :pswitch_f
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_15
        0xc6b -> :sswitch_14
        0xc81 -> :sswitch_13
        0xcae -> :sswitch_12
        0xccc -> :sswitch_11
        0xd1b -> :sswitch_10
        0xd2b -> :sswitch_f
        0xd37 -> :sswitch_e
        0xd46 -> :sswitch_d
        0xd56 -> :sswitch_c
        0xd67 -> :sswitch_b
        0xdbe -> :sswitch_a
        0xdff -> :sswitch_9
        0xe04 -> :sswitch_8
        0xe43 -> :sswitch_7
        0xe5d -> :sswitch_6
        0xe74 -> :sswitch_5
        0xe7e -> :sswitch_4
        0xeb3 -> :sswitch_3
        0xf2e -> :sswitch_2
        0x17fd0 -> :sswitch_1
        0x364d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
