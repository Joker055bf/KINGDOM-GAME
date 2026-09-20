.class public interface abstract Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/request/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestCallback"
.end annotation


# virtual methods
.method public abstract onRequestFailed(Ljava/lang/String;)V
.end method

.method public abstract onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
.end method
