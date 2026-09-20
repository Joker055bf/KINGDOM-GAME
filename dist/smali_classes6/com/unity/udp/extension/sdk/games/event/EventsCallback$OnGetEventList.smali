.class public interface abstract Lcom/unity/udp/extension/sdk/games/event/EventsCallback$OnGetEventList;
.super Ljava/lang/Object;
.source "EventsCallback.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/event/EventsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetEventList"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/EventEntity;",
            ">;)V"
        }
    .end annotation
.end method
