.class public interface abstract Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;
.super Ljava/lang/Object;
.source "AchievementsCallback.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetAchievementList"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;",
            ">;)V"
        }
    .end annotation
.end method
