.class public interface abstract Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelectListener"
.end annotation


# virtual methods
.method public abstract onClick(Landroid/view/View;Ljava/lang/CharSequence;)V
.end method

.method public abstract onClickUrl(Ljava/lang/String;)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onDismissCustomPop()V
.end method

.method public abstract onLongClick(Landroid/view/View;)V
.end method

.method public abstract onReset()V
.end method

.method public abstract onScrolling()V
.end method

.method public abstract onSelectAllShowCustomPop()V
.end method

.method public abstract onTextSelected(Ljava/lang/CharSequence;)V
.end method
