.class public final synthetic Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/FormListAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/tgs/aics/adapter/FormListAdapter;->lambda$setPicItemClick$5$com-tgs-aics-adapter-FormListAdapter(Ljava/util/ArrayList;ILandroid/view/View;)V

    return-void
.end method
