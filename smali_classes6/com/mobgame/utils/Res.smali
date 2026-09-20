.class public Lcom/mobgame/utils/Res;
.super Ljava/lang/Object;
.source "Res.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 175
    invoke-static {p0, p1}, Lcom/mobgame/utils/Res;->drawableResource(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static drawableResource(Landroid/content/Context;I)I
    .locals 1

    .line 159
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "eng"

    :goto_0
    const-string v0, "vie"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 164
    sget p0, Lcom/mobgame/R$drawable;->float_button:I

    if-ne p0, p1, :cond_1

    sget p0, Lcom/mobgame/R$drawable;->float_button:I

    return p0

    .line 165
    :cond_1
    sget p0, Lcom/mobgame/R$drawable;->logo_sm:I

    if-ne p0, p1, :cond_2

    sget p0, Lcom/mobgame/R$drawable;->logo_sm_vn:I

    return p0

    .line 166
    :cond_2
    sget p0, Lcom/mobgame/R$drawable;->gcm_sm:I

    if-ne p0, p1, :cond_3

    sget p0, Lcom/mobgame/R$drawable;->gcm_sm_vn:I

    return p0

    .line 167
    :cond_3
    sget p0, Lcom/mobgame/R$drawable;->bar_header:I

    if-ne p0, p1, :cond_4

    sget p0, Lcom/mobgame/R$drawable;->bar_header_vn:I

    return p0

    .line 168
    :cond_4
    sget p0, Lcom/mobgame/R$drawable;->float_hide_tips_animation:I

    if-ne p0, p1, :cond_5

    sget p0, Lcom/mobgame/R$drawable;->float_hide_tips_animation_vn:I

    return p0

    :cond_5
    return p1
.end method

.method public static string(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14

    const-string v0, "currentLang : "

    .line 17
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "languages"

    if-eqz v1, :cond_0

    .line 18
    :try_start_1
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {p0, v2, v1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "TAG"

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget v0, Lcom/mobgame/R$string;->title_force_logout:I

    if-ne v0, p1, :cond_1

    .line 25
    invoke-static {p0, v2}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p0, "vie"

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "Copy"

    if-eqz p0, :cond_27

    .line 30
    :try_start_2
    sget p0, Lcom/mobgame/R$string;->hello:I

    if-ne p0, p1, :cond_2

    const-string p0, "Ch\u00e0o"

    return-object p0

    .line 31
    :cond_2
    sget p0, Lcom/mobgame/R$string;->reload:I

    if-ne p0, p1, :cond_3

    const-string p0, "T\u1ea3i l\u1ea1i"

    return-object p0

    .line 32
    :cond_3
    sget p0, Lcom/mobgame/R$string;->connection_lost:I

    if-ne p0, p1, :cond_4

    const-string p0, "M\u1ea5t k\u1ebft n\u1ed1i"

    return-object p0

    .line 33
    :cond_4
    sget p0, Lcom/mobgame/R$string;->something_went_wrong:I

    if-ne p0, p1, :cond_5

    const-string p0, "C\u00f3 l\u1ed7i x\u1ea3y ra"

    return-object p0

    .line 34
    :cond_5
    sget p0, Lcom/mobgame/R$string;->connection_error:I

    if-ne p0, p1, :cond_6

    const-string p0, "L\u1ed7i k\u1ebft n\u1ed1i"

    return-object p0

    .line 35
    :cond_6
    sget p0, Lcom/mobgame/R$string;->unable_to_connect:I

    if-ne p0, p1, :cond_7

    const-string p0, "Kh\u00f4ng th\u1ec3 k\u1ebft n\u1ed1i t\u1edbi server"

    return-object p0

    .line 36
    :cond_7
    sget p0, Lcom/mobgame/R$string;->dialog_tips_title:I

    if-ne p0, p1, :cond_8

    const-string p0, "B\u1ea1n c\u00f3 th\u1ec3 hi\u1ec3n th\u1ecb n\u00fat \u0111i\u1ec1u khi\u1ec3n nh\u01b0 sau"

    return-object p0

    .line 37
    :cond_8
    sget p0, Lcom/mobgame/R$string;->dont_ask_again:I

    if-ne p0, p1, :cond_9

    const-string p0, "Kh\u00f4ng hi\u1ec3n th\u1ecb l\u1ea1i"

    return-object p0

    .line 38
    :cond_9
    sget p0, Lcom/mobgame/R$string;->dismiss:I

    if-ne p0, p1, :cond_a

    const-string p0, "K\u00e9o v\u00e0o \u0111\u00e2y \u0111\u1ec3 \u1ea9n"

    return-object p0

    .line 39
    :cond_a
    sget p0, Lcom/mobgame/R$string;->remind_me:I

    if-ne p0, p1, :cond_b

    const-string p0, "B\u1ecf qua"

    return-object p0

    .line 40
    :cond_b
    sget p0, Lcom/mobgame/R$string;->retry:I

    if-ne p0, p1, :cond_c

    const-string p0, "Th\u1eed l\u1ea1i"

    return-object p0

    .line 41
    :cond_c
    sget p0, Lcom/mobgame/R$string;->exit:I

    if-ne p0, p1, :cond_d

    const-string p0, "Tho\u00e1t"

    return-object p0

    .line 42
    :cond_d
    sget p0, Lcom/mobgame/R$string;->please_wait:I

    if-ne p0, p1, :cond_e

    const-string p0, "Xin \u0111\u1ee3i"

    return-object p0

    .line 43
    :cond_e
    sget p0, Lcom/mobgame/R$string;->logging_in:I

    if-ne p0, p1, :cond_f

    const-string p0, "\u0110ang \u0111\u0103ng nh\u1eadp"

    return-object p0

    .line 44
    :cond_f
    sget p0, Lcom/mobgame/R$string;->connecting_facebook:I

    if-ne p0, p1, :cond_10

    const-string p0, "\u0110ang k\u1ebft n\u1ed1i t\u1edbi Facebook c\u1ee7a b\u1ea1n"

    return-object p0

    .line 45
    :cond_10
    sget p0, Lcom/mobgame/R$string;->connecting_google:I

    if-ne p0, p1, :cond_11

    const-string p0, "\u0110ang k\u1ebft n\u1ed1i t\u1edbi t\u00e0i kho\u1ea3n Google c\u1ee7a b\u1ea1n"

    return-object p0

    .line 46
    :cond_11
    sget p0, Lcom/mobgame/R$string;->connecting_google_play:I

    if-ne p0, p1, :cond_12

    const-string p0, "\u0110ang k\u1ebft n\u1ed1i t\u1edbi Google Play"

    return-object p0

    .line 47
    :cond_12
    sget p0, Lcom/mobgame/R$string;->connecting_server:I

    if-ne p0, p1, :cond_13

    const-string p0, "\u0110ang k\u1ebft n\u1ed1i t\u1edbi server"

    return-object p0

    .line 48
    :cond_13
    sget p0, Lcom/mobgame/R$string;->copied:I

    if-ne p0, p1, :cond_14

    const-string p0, "\u0110\u00e3 copy!"

    return-object p0

    .line 49
    :cond_14
    sget p0, Lcom/mobgame/R$string;->copy:I

    if-ne p0, p1, :cond_15

    return-object v0

    .line 50
    :cond_15
    sget p0, Lcom/mobgame/R$string;->complete_now:I

    if-ne p0, p1, :cond_16

    const-string p0, "Ho\u00e0n th\u00e0nh ngay"

    return-object p0

    .line 51
    :cond_16
    sget p0, Lcom/mobgame/R$string;->notice:I

    if-ne p0, p1, :cond_17

    const-string p0, "Th\u00f4ng b\u00e1o"

    return-object p0

    .line 52
    :cond_17
    sget p0, Lcom/mobgame/R$string;->bind_account:I

    if-ne p0, p1, :cond_18

    const-string p0, "N\u1ed1i t\u00e0i kho\u1ea3n ngay"

    return-object p0

    .line 53
    :cond_18
    sget p0, Lcom/mobgame/R$string;->attention_overlay:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "Ch\u00fa \u00fd"

    if-ne p0, p1, :cond_19

    return-object v0

    .line 54
    :cond_19
    :try_start_3
    sget p0, Lcom/mobgame/R$string;->attention_permission:I

    if-ne p0, p1, :cond_1a

    return-object v0

    .line 55
    :cond_1a
    sget p0, Lcom/mobgame/R$string;->attention_message:I

    if-ne p0, p1, :cond_1b

    const-string p0, "B\u1ea1n c\u1ea7n quy\u1ec1n truy c\u1eadp b\u1ed9 nh\u1edb \u0111\u1ec3 gi\u1ea3i n\u00e9n t\u00e0i nguy\u00ean game."

    return-object p0

    .line 56
    :cond_1b
    sget p0, Lcom/mobgame/R$string;->draw_over_apps_message:I

    if-ne p0, p1, :cond_1c

    const-string p0, "B\u1ea1n c\u1ea7n c\u1ea5p th\u00eam quy\u1ec1n \u0111\u1ec3 game ho\u1ea1t \u0111\u1ed9ng t\u1ed1t nh\u1ea5t"

    return-object p0

    .line 57
    :cond_1c
    sget p0, Lcom/mobgame/R$string;->hide:I

    if-ne p0, p1, :cond_1d

    const-string p0, "\u1ea8n"

    return-object p0

    .line 58
    :cond_1d
    sget p0, Lcom/mobgame/R$string;->cancel:I

    if-ne p0, p1, :cond_1e

    const-string p0, "H\u1ee7y"

    return-object p0

    .line 59
    :cond_1e
    sget p0, Lcom/mobgame/R$string;->warning:I

    if-ne p0, p1, :cond_1f

    return-object v0

    .line 60
    :cond_1f
    sget p0, Lcom/mobgame/R$string;->message_warning:I

    if-ne p0, p1, :cond_20

    const-string p0, "B\u1ea1n c\u1ea7n c\u1ea5p quy\u1ec1n \u0111\u1ec3 c\u00f3 th\u1ec3 tr\u1ea3i nghi\u1ec7m \u1ee9ng d\u1ee5ng t\u1ed1t nh\u1ea5t"

    return-object p0

    .line 61
    :cond_20
    sget p0, Lcom/mobgame/R$string;->do_you_want_close:I

    if-ne p0, p1, :cond_21

    const-string p0, "B\u1ea1n c\u00f3 mu\u1ed1n \u0111\u00f3ng kh\u00f4ng ?"

    return-object p0

    .line 62
    :cond_21
    sget p0, Lcom/mobgame/R$string;->message_exit:I

    if-ne p0, p1, :cond_22

    const-string p0, "B\u1ea1n c\u00f3 mu\u1ed1n tho\u00e1t kh\u00f4ng ?"

    return-object p0

    .line 63
    :cond_22
    sget p0, Lcom/mobgame/R$string;->close:I

    if-ne p0, p1, :cond_23

    const-string p0, "\u0110\u00f3ng"

    return-object p0

    .line 64
    :cond_23
    sget p0, Lcom/mobgame/R$string;->alert_image_validate:I

    if-ne p0, p1, :cond_24

    const-string p0, "Ch\u1ec9 \u0111\u01b0\u1ee3c ch\u1ecdn t\u1ed1i \u0111a 3 \u1ea3nh"

    return-object p0

    .line 65
    :cond_24
    sget p0, Lcom/mobgame/R$string;->images_selected:I

    if-ne p0, p1, :cond_25

    const-string p0, "\u1ea2nh \u0111\u00e3 ch\u1ecdn"

    return-object p0

    .line 67
    :cond_25
    sget p0, Lcom/mobgame/R$string;->logout:I

    if-ne p0, p1, :cond_26

    const-string p0, "\u0110\u0103ng xu\u1ea5t"

    return-object p0

    .line 68
    :cond_26
    sget p0, Lcom/mobgame/R$string;->title_force_logout:I

    if-ne p0, p1, :cond_72

    const-string p0, "Phi\u00ean \u0111\u0103ng nh\u1eadp c\u1ee7a b\u1ea1n \u0111\u00e3 h\u1ebft h\u1ea1n. \n    Vui l\u00f2ng m\u1edf l\u1ea1i game \u0111\u1ec3 ti\u1ebfp t\u1ee5c."

    return-object p0

    :cond_27
    const-string p0, "eng"

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "      Your session has expired.\nPlease restart game to continue."

    const-string v3, "Logout"

    const-string v4, "Images selected"

    const-string v5, "You can only select upto 3 photos"

    const-string v6, "Close"

    const-string v7, "Do you want close ?"

    const-string v8, "We need more permission to deliver the best experience"

    const-string v9, "Cancel"

    const-string v10, "Hide"

    const-string v11, "We need to grant Draw Over Apps permission to enable game to perform its full features"

    const-string v12, "Notice"

    const-string v13, "Attention"

    if-eqz p0, :cond_4d

    .line 71
    :try_start_4
    sget p0, Lcom/mobgame/R$string;->hello:I

    if-ne p0, p1, :cond_28

    const-string p0, "Hello"

    return-object p0

    .line 72
    :cond_28
    sget p0, Lcom/mobgame/R$string;->reload:I

    if-ne p0, p1, :cond_29

    const-string p0, "Reload"

    return-object p0

    .line 73
    :cond_29
    sget p0, Lcom/mobgame/R$string;->connection_lost:I

    if-ne p0, p1, :cond_2a

    const-string p0, "Oops! Connection lost"

    return-object p0

    .line 74
    :cond_2a
    sget p0, Lcom/mobgame/R$string;->something_went_wrong:I

    if-ne p0, p1, :cond_2b

    const-string p0, "Oops! Something went wrong"

    return-object p0

    .line 75
    :cond_2b
    sget p0, Lcom/mobgame/R$string;->connection_error:I

    if-ne p0, p1, :cond_2c

    const-string p0, "Connection error"

    return-object p0

    .line 76
    :cond_2c
    sget p0, Lcom/mobgame/R$string;->unable_to_connect:I

    if-ne p0, p1, :cond_2d

    const-string p0, "Cannot connect to server"

    return-object p0

    .line 77
    :cond_2d
    sget p0, Lcom/mobgame/R$string;->dialog_tips_title:I

    if-ne p0, p1, :cond_2e

    const-string p0, "You can show up the control button as following"

    return-object p0

    .line 78
    :cond_2e
    sget p0, Lcom/mobgame/R$string;->dont_ask_again:I

    if-ne p0, p1, :cond_2f

    const-string p0, "Don\'t ask again"

    return-object p0

    .line 79
    :cond_2f
    sget p0, Lcom/mobgame/R$string;->dismiss:I

    if-ne p0, p1, :cond_30

    const-string p0, "Drop here to hide"

    return-object p0

    .line 80
    :cond_30
    sget p0, Lcom/mobgame/R$string;->remind_me:I

    if-ne p0, p1, :cond_31

    const-string p0, "Remind me"

    return-object p0

    .line 81
    :cond_31
    sget p0, Lcom/mobgame/R$string;->retry:I

    if-ne p0, p1, :cond_32

    const-string p0, "Retry"

    return-object p0

    .line 82
    :cond_32
    sget p0, Lcom/mobgame/R$string;->exit:I

    if-ne p0, p1, :cond_33

    const-string p0, "Exit"

    return-object p0

    .line 83
    :cond_33
    sget p0, Lcom/mobgame/R$string;->please_wait:I

    if-ne p0, p1, :cond_34

    const-string p0, "Please wait"

    return-object p0

    .line 84
    :cond_34
    sget p0, Lcom/mobgame/R$string;->logging_in:I

    if-ne p0, p1, :cond_35

    const-string p0, "Logging in"

    return-object p0

    .line 85
    :cond_35
    sget p0, Lcom/mobgame/R$string;->connecting_facebook:I

    if-ne p0, p1, :cond_36

    const-string p0, "Connecting to your Facebook account"

    return-object p0

    .line 86
    :cond_36
    sget p0, Lcom/mobgame/R$string;->connecting_google:I

    if-ne p0, p1, :cond_37

    const-string p0, "Connecting to your Google account"

    return-object p0

    .line 87
    :cond_37
    sget p0, Lcom/mobgame/R$string;->connecting_google_play:I

    if-ne p0, p1, :cond_38

    const-string p0, "Connecting to your Google Play account"

    return-object p0

    .line 88
    :cond_38
    sget p0, Lcom/mobgame/R$string;->connecting_server:I

    if-ne p0, p1, :cond_39

    const-string p0, "Connecting to server"

    return-object p0

    .line 89
    :cond_39
    sget p0, Lcom/mobgame/R$string;->copied:I

    if-ne p0, p1, :cond_3a

    const-string p0, "Copied!"

    return-object p0

    .line 90
    :cond_3a
    sget p0, Lcom/mobgame/R$string;->copy:I

    if-ne p0, p1, :cond_3b

    return-object v0

    .line 91
    :cond_3b
    sget p0, Lcom/mobgame/R$string;->complete_now:I

    if-ne p0, p1, :cond_3c

    const-string p0, "Complete now"

    return-object p0

    .line 92
    :cond_3c
    sget p0, Lcom/mobgame/R$string;->notice:I

    if-ne p0, p1, :cond_3d

    return-object v12

    .line 93
    :cond_3d
    sget p0, Lcom/mobgame/R$string;->bind_account:I

    if-ne p0, p1, :cond_3e

    const-string p0, "Bind account"

    return-object p0

    .line 94
    :cond_3e
    sget p0, Lcom/mobgame/R$string;->attention_overlay:I

    if-ne p0, p1, :cond_3f

    return-object v12

    .line 95
    :cond_3f
    sget p0, Lcom/mobgame/R$string;->attention_permission:I

    if-ne p0, p1, :cond_40

    return-object v13

    .line 96
    :cond_40
    sget p0, Lcom/mobgame/R$string;->attention_message:I

    if-ne p0, p1, :cond_41

    const-string p0, "We need read and write permissions to extract game resource."

    return-object p0

    .line 97
    :cond_41
    sget p0, Lcom/mobgame/R$string;->draw_over_apps_message:I

    if-ne p0, p1, :cond_42

    return-object v11

    .line 98
    :cond_42
    sget p0, Lcom/mobgame/R$string;->hide:I

    if-ne p0, p1, :cond_43

    return-object v10

    .line 99
    :cond_43
    sget p0, Lcom/mobgame/R$string;->cancel:I

    if-ne p0, p1, :cond_44

    return-object v9

    .line 100
    :cond_44
    sget p0, Lcom/mobgame/R$string;->warning:I

    if-ne p0, p1, :cond_45

    return-object v13

    .line 101
    :cond_45
    sget p0, Lcom/mobgame/R$string;->message_warning:I

    if-ne p0, p1, :cond_46

    return-object v8

    .line 102
    :cond_46
    sget p0, Lcom/mobgame/R$string;->do_you_want_close:I

    if-ne p0, p1, :cond_47

    return-object v7

    .line 103
    :cond_47
    sget p0, Lcom/mobgame/R$string;->message_exit:I

    if-ne p0, p1, :cond_48

    const-string p0, "Do you want to exit ?"

    return-object p0

    .line 104
    :cond_48
    sget p0, Lcom/mobgame/R$string;->close:I

    if-ne p0, p1, :cond_49

    return-object v6

    .line 105
    :cond_49
    sget p0, Lcom/mobgame/R$string;->alert_image_validate:I

    if-ne p0, p1, :cond_4a

    return-object v5

    .line 106
    :cond_4a
    sget p0, Lcom/mobgame/R$string;->images_selected:I

    if-ne p0, p1, :cond_4b

    return-object v4

    .line 108
    :cond_4b
    sget p0, Lcom/mobgame/R$string;->logout:I

    if-ne p0, p1, :cond_4c

    return-object v3

    .line 109
    :cond_4c
    sget p0, Lcom/mobgame/R$string;->title_force_logout:I

    if-ne p0, p1, :cond_72

    return-object v2

    :cond_4d
    const-string p0, "ind"

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_72

    .line 112
    sget p0, Lcom/mobgame/R$string;->hello:I

    if-ne p0, p1, :cond_4e

    const-string p0, "Halo"

    return-object p0

    .line 113
    :cond_4e
    sget p0, Lcom/mobgame/R$string;->reload:I

    if-ne p0, p1, :cond_4f

    const-string p0, "Memuat ulang"

    return-object p0

    .line 114
    :cond_4f
    sget p0, Lcom/mobgame/R$string;->something_went_wrong:I

    if-ne p0, p1, :cond_50

    const-string p0, "Oops! Terjadi kesalahan"

    return-object p0

    .line 115
    :cond_50
    sget p0, Lcom/mobgame/R$string;->connection_error:I

    if-ne p0, p1, :cond_51

    const-string p0, "Koneksi error"

    return-object p0

    .line 116
    :cond_51
    sget p0, Lcom/mobgame/R$string;->unable_to_connect:I

    if-ne p0, p1, :cond_52

    const-string p0, "Tidak dapat terhubung ke server"

    return-object p0

    .line 117
    :cond_52
    sget p0, Lcom/mobgame/R$string;->dialog_tips_title:I

    if-ne p0, p1, :cond_53

    const-string p0, "Tampilkan tombol"

    return-object p0

    .line 118
    :cond_53
    sget p0, Lcom/mobgame/R$string;->dont_ask_again:I

    if-ne p0, p1, :cond_54

    const-string p0, "Jangan tanya lagi"

    return-object p0

    .line 119
    :cond_54
    sget p0, Lcom/mobgame/R$string;->dismiss:I

    if-ne p0, p1, :cond_55

    const-string p0, "Abaikan"

    return-object p0

    .line 120
    :cond_55
    sget p0, Lcom/mobgame/R$string;->remind_me:I

    if-ne p0, p1, :cond_56

    const-string p0, "Ingatkan"

    return-object p0

    .line 121
    :cond_56
    sget p0, Lcom/mobgame/R$string;->retry:I

    if-ne p0, p1, :cond_57

    const-string p0, "Coba lagi"

    return-object p0

    .line 122
    :cond_57
    sget p0, Lcom/mobgame/R$string;->exit:I

    if-ne p0, p1, :cond_58

    const-string p0, "Keluar"

    return-object p0

    .line 123
    :cond_58
    sget p0, Lcom/mobgame/R$string;->please_wait:I

    if-ne p0, p1, :cond_59

    const-string p0, "Harap tunggu"

    return-object p0

    .line 124
    :cond_59
    sget p0, Lcom/mobgame/R$string;->logging_in:I

    if-ne p0, p1, :cond_5a

    const-string p0, "Masuk"

    return-object p0

    .line 125
    :cond_5a
    sget p0, Lcom/mobgame/R$string;->connecting_facebook:I

    if-ne p0, p1, :cond_5b

    const-string p0, "Terhubung ke akun Facebook"

    return-object p0

    .line 126
    :cond_5b
    sget p0, Lcom/mobgame/R$string;->connecting_google:I

    if-ne p0, p1, :cond_5c

    const-string p0, "Terhubung ke akun Google"

    return-object p0

    .line 127
    :cond_5c
    sget p0, Lcom/mobgame/R$string;->connecting_google_play:I

    if-ne p0, p1, :cond_5d

    const-string p0, "Terhubung ke akun Google Play"

    return-object p0

    .line 128
    :cond_5d
    sget p0, Lcom/mobgame/R$string;->connecting_server:I

    if-ne p0, p1, :cond_5e

    const-string p0, "Terhubung ke server"

    return-object p0

    .line 129
    :cond_5e
    sget p0, Lcom/mobgame/R$string;->copied:I

    if-ne p0, p1, :cond_5f

    const-string p0, "Disalin!"

    return-object p0

    .line 130
    :cond_5f
    sget p0, Lcom/mobgame/R$string;->copy:I

    if-ne p0, p1, :cond_60

    const-string p0, "Disalin"

    return-object p0

    .line 131
    :cond_60
    sget p0, Lcom/mobgame/R$string;->complete_now:I

    if-ne p0, p1, :cond_61

    const-string p0, "Selesai"

    return-object p0

    .line 132
    :cond_61
    sget p0, Lcom/mobgame/R$string;->notice:I

    if-ne p0, p1, :cond_62

    const-string p0, "Pemberitahuan"

    return-object p0

    .line 133
    :cond_62
    sget p0, Lcom/mobgame/R$string;->bind_account:I

    if-ne p0, p1, :cond_63

    const-string p0, "Ikat akun"

    return-object p0

    .line 134
    :cond_63
    sget p0, Lcom/mobgame/R$string;->attention_overlay:I

    if-ne p0, p1, :cond_64

    return-object v12

    .line 135
    :cond_64
    sget p0, Lcom/mobgame/R$string;->attention_permission:I

    if-ne p0, p1, :cond_65

    return-object v13

    .line 136
    :cond_65
    sget p0, Lcom/mobgame/R$string;->attention_message:I

    if-ne p0, p1, :cond_66

    const-string p0, "We need read and write permission to extract game resource."

    return-object p0

    .line 137
    :cond_66
    sget p0, Lcom/mobgame/R$string;->draw_over_apps_message:I

    if-ne p0, p1, :cond_67

    return-object v11

    .line 138
    :cond_67
    sget p0, Lcom/mobgame/R$string;->hide:I

    if-ne p0, p1, :cond_68

    return-object v10

    .line 139
    :cond_68
    sget p0, Lcom/mobgame/R$string;->cancel:I

    if-ne p0, p1, :cond_69

    return-object v9

    .line 140
    :cond_69
    sget p0, Lcom/mobgame/R$string;->warning:I

    if-ne p0, p1, :cond_6a

    return-object v13

    .line 141
    :cond_6a
    sget p0, Lcom/mobgame/R$string;->message_warning:I

    if-ne p0, p1, :cond_6b

    return-object v8

    .line 142
    :cond_6b
    sget p0, Lcom/mobgame/R$string;->do_you_want_close:I

    if-ne p0, p1, :cond_6c

    return-object v7

    .line 143
    :cond_6c
    sget p0, Lcom/mobgame/R$string;->message_exit:I

    if-ne p0, p1, :cond_6d

    const-string p0, "Do you want exit ?"

    return-object p0

    .line 144
    :cond_6d
    sget p0, Lcom/mobgame/R$string;->close:I

    if-ne p0, p1, :cond_6e

    return-object v6

    .line 145
    :cond_6e
    sget p0, Lcom/mobgame/R$string;->alert_image_validate:I

    if-ne p0, p1, :cond_6f

    return-object v5

    .line 146
    :cond_6f
    sget p0, Lcom/mobgame/R$string;->images_selected:I

    if-ne p0, p1, :cond_70

    return-object v4

    .line 148
    :cond_70
    sget p0, Lcom/mobgame/R$string;->logout:I

    if-ne p0, p1, :cond_71

    return-object v3

    .line 149
    :cond_71
    sget p0, Lcom/mobgame/R$string;->title_force_logout:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p0, p1, :cond_72

    return-object v2

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_72
    const-string p0, ""

    return-object p0
.end method
