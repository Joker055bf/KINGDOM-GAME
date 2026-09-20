.class Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "DiagnoseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/tgs/aics/diagnose/IDiagnose;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lcom/tgs/aics/diagnose/IDiagnose;

    check-cast p2, Lcom/tgs/aics/diagnose/IDiagnose;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$1;->areContentsTheSame(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lcom/tgs/aics/diagnose/IDiagnose;

    check-cast p2, Lcom/tgs/aics/diagnose/IDiagnose;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$1;->areItemsTheSame(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)Z

    move-result p1

    return p1
.end method
