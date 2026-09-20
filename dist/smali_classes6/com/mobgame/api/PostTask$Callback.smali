.class public interface abstract Lcom/mobgame/api/PostTask$Callback;
.super Ljava/lang/Object;
.source "PostTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/api/PostTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
