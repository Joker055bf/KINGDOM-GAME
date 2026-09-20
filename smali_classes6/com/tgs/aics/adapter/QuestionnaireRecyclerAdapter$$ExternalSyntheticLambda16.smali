.class public final synthetic Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;->f$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->lambda$sortTypeInitView$3$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
