.class Lcom/adjust/sdk/PurchaseVerificationHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackageI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/PurchaseVerificationHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$3;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$3;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/PurchaseVerificationHandler;->access$202(Lcom/adjust/sdk/PurchaseVerificationHandler;J)J

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$3;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    invoke-static {v0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->access$300(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    return-void
.end method
