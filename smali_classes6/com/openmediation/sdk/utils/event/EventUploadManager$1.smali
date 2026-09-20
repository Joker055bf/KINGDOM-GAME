.class Lcom/openmediation/sdk/utils/event/EventUploadManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

.field final synthetic val$eventId:I

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    iput p2, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->val$eventId:I

    iput-object p3, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    iget v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->val$eventId:I

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$300(Lcom/openmediation/sdk/utils/event/EventUploadManager;ILorg/json/JSONObject;)Lcom/openmediation/sdk/utils/event/Event;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$400(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/Event;)V

    return-void
.end method
