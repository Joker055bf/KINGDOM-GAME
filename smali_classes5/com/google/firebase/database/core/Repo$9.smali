.class Lcom/google/firebase/database/core/Repo$9;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->getValue(Lcom/google/firebase/database/Query;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/database/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$query:Lcom/google/firebase/database/Query;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/Query;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 542
    iget-object p1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {p1}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/SyncTree;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-void
.end method
