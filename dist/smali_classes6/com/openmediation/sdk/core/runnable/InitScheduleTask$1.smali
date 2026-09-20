.class Lcom/openmediation/sdk/core/runnable/InitScheduleTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/runnable/InitScheduleTask;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask$1;->this$0:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute Re Init SDK Task Failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string v0, "Execute Re Init SDK Success"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/openmediation/sdk/core/runnable/InitScheduleTask;->mTask:Lcom/openmediation/sdk/core/runnable/InitScheduleTask;

    return-void
.end method
