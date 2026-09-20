.class public Lcom/tgs/aics/diagnose/impl/traceroute/TGSTraceroute;
.super Ljava/lang/Object;
.source "TGSTraceroute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startTraceroute(Ljava/lang/String;Ljava/lang/String;IILcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 7

    .line 10
    sget-object v0, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->INSTANCE:Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/traceroute/TraceHandler;->startTrace(Ljava/lang/String;Ljava/lang/String;IILcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return-void
.end method
