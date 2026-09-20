.class public final synthetic Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;->lambda$setTitle$0$com-tgs-aics-thirdtool-datapicker-common-ModalDialog(Ljava/lang/CharSequence;)V

    return-void
.end method
