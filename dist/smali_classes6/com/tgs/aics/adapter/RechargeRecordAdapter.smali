.class public Lcom/tgs/aics/adapter/RechargeRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "RechargeRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private rechargeRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->rechargeRecordList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->rechargeRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->rechargeRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->getItem(I)Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string p3, "tgs_aics_recharge_record_item"

    invoke-static {p2, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->getItem(I)Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object p1

    .line 54
    iget-object v0, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->rechargeTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->mContext:Landroid/content/Context;

    const-string v2, "tgs_aics_recharge_query_pay_time"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getRechargeTime()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->productName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getGiftName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getPayPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->shipStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->shipStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatusColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object p3, p3, Lcom/tgs/aics/adapter/RechargeRecordAdapter$ViewHolder;->feedback:Landroid/widget/Button;

    new-instance v0, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/adapter/RechargeRecordAdapter;Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method synthetic lambda$getView$0$com-tgs-aics-adapter-RechargeRecordAdapter(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p2, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->mContext:Landroid/content/Context;

    instance-of v0, p2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    if-eqz v0, :cond_0

    .line 62
    check-cast p2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;

    invoke-virtual {p2, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackCheckWorkOrderStatus(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->rechargeRecordList:Ljava/util/List;

    .line 71
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
