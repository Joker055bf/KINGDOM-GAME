.class public final synthetic Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/diagnose/Matcher;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMatch(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/AICSDiagnoseManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnoseManager;->lambda$findCsharpDiagnose$2(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
