.class Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;
.super Ljava/lang/Object;
.source "TGSGooglePay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->resetTimer(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;


# direct methods
.method constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 564
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$fgetmIsForeground(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "sdktgs.googlepay"

    if-nez v0, :cond_0

    const-string v0, "App in background, skip heartbeat."

    .line 565
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$fputmHeartRunnable(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/lang/Runnable;)V

    return-void

    .line 570
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Heartbeat to check verify local save order."

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$mcheckVerifyLocalSaveOrder(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Z

    .line 574
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$fgetmHeartRunnable(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$fputmHeartRunnable(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/lang/Runnable;)V

    .line 577
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    const/16 v5, 0x3a98

    invoke-static {v0, v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->-$$Nest$mresetTimer(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;I)Z

    .line 580
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Heartbeat to check all purchases orders."

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;->this$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-virtual {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->queryAllTypesPurchasesAsync(Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return-void
.end method
