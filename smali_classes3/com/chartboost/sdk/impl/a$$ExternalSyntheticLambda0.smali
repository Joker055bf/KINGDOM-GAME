.class public final synthetic Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chartboost/sdk/ads/Ad;

.field public final synthetic f$1:Lcom/chartboost/sdk/impl/a;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$0:Lcom/chartboost/sdk/ads/Ad;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$1:Lcom/chartboost/sdk/impl/a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$0:Lcom/chartboost/sdk/ads/Ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$1:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/a$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/a;->a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
