.class public final synthetic Lxyz/doikki/videoplayer/util/CutoutUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxyz/doikki/videoplayer/util/CutoutUtil$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-boolean v0, p0, Lxyz/doikki/videoplayer/util/CutoutUtil$$ExternalSyntheticLambda0;->f$0:Z

    invoke-static {v0, p1, p2}, Lxyz/doikki/videoplayer/util/CutoutUtil;->lambda$adaptCutoutAboveAndroidP$0(ZLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
