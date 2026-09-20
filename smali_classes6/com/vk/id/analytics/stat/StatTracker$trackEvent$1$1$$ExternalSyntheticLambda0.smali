.class public final synthetic Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/analytics/stat/StatTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/analytics/stat/StatTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/analytics/stat/StatTracker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/analytics/stat/StatTracker;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v5, p5

    check-cast v5, Lorg/json/JSONArray;

    move-object v6, p6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/vk/id/analytics/stat/StatTracker$trackEvent$1$1;->$r8$lambda$kyLdqGi1gqQuL_HPVevKR7sHnyU(Lcom/vk/id/analytics/stat/StatTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p1

    return-object p1
.end method
