.class Lcom/tgs/aics/ui/activity/FormCreateActivity$3;
.super Ljava/lang/Object;
.source "FormCreateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/FormCreateActivity;->initWebSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$3;->this$0:Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 257
    check-cast p2, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

    invoke-virtual {p2}, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;->getService()Lcom/tgs/aics/websocket/WebSocketService;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 262
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    return-void
.end method
