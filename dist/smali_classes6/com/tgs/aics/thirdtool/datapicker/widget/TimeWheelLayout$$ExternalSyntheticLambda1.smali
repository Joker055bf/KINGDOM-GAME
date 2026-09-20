.class public final synthetic Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;

    return-void
.end method


# virtual methods
.method public final formatItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;

    invoke-static {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->lambda$setTimeFormatter$1(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
