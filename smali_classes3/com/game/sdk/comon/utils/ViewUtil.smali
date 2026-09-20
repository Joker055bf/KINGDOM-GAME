.class public Lcom/game/sdk/comon/utils/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyButton(Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 41
    :cond_4
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 42
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {p6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_6
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v0

    if-nez v0, :cond_7

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_7
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result p0

    if-nez p0, :cond_8

    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method
