.class Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/event/EventUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastStayEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/EventUploadManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;-><init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$900(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$1000(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V

    :cond_0
    return-void
.end method
