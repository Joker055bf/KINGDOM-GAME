.class public Lcom/mobgame/gui/MobGameWebViewDetail;
.super Landroid/webkit/WebView;
.source "MobGameWebViewDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOnScrollChangedCallback()Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebViewDetail;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 33
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebViewDetail;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebViewDetail;->mOnScrollChangedCallback:Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;

    return-void
.end method
