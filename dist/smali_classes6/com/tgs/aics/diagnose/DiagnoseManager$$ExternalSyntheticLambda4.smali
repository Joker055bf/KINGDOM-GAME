.class public final synthetic Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tgs/aics/diagnose/IDiagnose;

    check-cast p2, Lcom/tgs/aics/diagnose/IDiagnose;

    invoke-static {p1, p2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->lambda$new$0(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)I

    move-result p1

    return p1
.end method
