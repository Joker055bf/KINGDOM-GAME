.class public final synthetic Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;

    return-void
.end method


# virtual methods
.method public final formatItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda3;->f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;

    invoke-static {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->lambda$setDateFormatter$3(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
