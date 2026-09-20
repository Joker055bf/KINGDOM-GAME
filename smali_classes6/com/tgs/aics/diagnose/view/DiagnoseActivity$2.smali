.class Lcom/tgs/aics/diagnose/view/DiagnoseActivity$2;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->initWebSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$2;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Succeed bind diagnose activity socket service."

    .line 174
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 175
    check-cast p2, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

    invoke-virtual {p2}, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;->getService()Lcom/tgs/aics/websocket/WebSocketService;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 180
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    return-void
.end method
