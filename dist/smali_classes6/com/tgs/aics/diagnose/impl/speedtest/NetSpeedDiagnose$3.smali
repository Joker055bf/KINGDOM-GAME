.class Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;
.super Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;
.source "NetSpeedDiagnose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

.field final synthetic val$handler:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

.field final synthetic val$retry:I

.field final synthetic val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iput p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$retry:I

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$handler:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 3

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$retry:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$handler:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

    invoke-static {p1, v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$3;->val$handler:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;->onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    return-void
.end method
