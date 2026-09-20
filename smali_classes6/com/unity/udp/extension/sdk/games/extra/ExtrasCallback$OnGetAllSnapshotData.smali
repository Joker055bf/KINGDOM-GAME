.class public interface abstract Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;
.super Ljava/lang/Object;
.source "ExtrasCallback.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetAllSnapshotData"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;",
            ">;)V"
        }
    .end annotation
.end method
