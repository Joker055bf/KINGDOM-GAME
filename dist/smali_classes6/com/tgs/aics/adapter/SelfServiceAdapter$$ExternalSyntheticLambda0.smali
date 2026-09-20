.class public final synthetic Lcom/tgs/aics/adapter/SelfServiceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/SelfServiceAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/SelfServiceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/SelfServiceAdapter;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/SelfServiceAdapter;

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->lambda$getView$0$com-tgs-aics-adapter-SelfServiceAdapter()Z

    move-result v0

    return v0
.end method
