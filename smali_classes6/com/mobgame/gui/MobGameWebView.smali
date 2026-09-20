.class public Lcom/mobgame/gui/MobGameWebView;
.super Landroid/webkit/WebView;
.source "MobGameWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOnScrollChangedCallback()Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebView;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 29
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebView;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebView;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;

    return-void
.end method
