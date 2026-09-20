.class public final synthetic Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/BaseActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->lambda$addSystemUiVisibilityChangeListener$2(Landroid/view/ViewGroup;I)V

    return-void
.end method
