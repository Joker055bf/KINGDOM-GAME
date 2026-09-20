.class public final synthetic Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/Matcher;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onMatch(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->lambda$startDiagnose$1(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
