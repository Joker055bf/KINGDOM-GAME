.class Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RechargeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/RechargeRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final amount:Landroid/widget/TextView;

.field public final feedback:Landroid/widget/Button;

.field public final orderStatus:Landroid/widget/TextView;

.field public final productName:Landroid/widget/TextView;

.field public final rechargeTime:Landroid/widget/TextView;

.field public final root:Landroid/view/View;

.field public final shipStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_recharge_record_item_pay_time"

    .line 85
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->rechargeTime:Landroid/widget/TextView;

    const-string v1, "tgs_aics_recharge_record_item_product_name"

    .line 86
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->productName:Landroid/widget/TextView;

    const-string v1, "tgs_aics_recharge_record_item_amount"

    .line 87
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    const-string v1, "tgs_aics_recharge_record_item_pay_status"

    .line 88
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->orderStatus:Landroid/widget/TextView;

    const-string v1, "tgs_aics_recharge_record_item_receipt_status"

    .line 89
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->shipStatus:Landroid/widget/TextView;

    const-string v1, "tgs_aics_recharge_record_item_feedback"

    .line 90
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->feedback:Landroid/widget/Button;

    .line 91
    iput-object p1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->root:Landroid/view/View;

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
