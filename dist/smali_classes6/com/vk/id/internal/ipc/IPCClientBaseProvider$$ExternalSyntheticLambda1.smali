.class public final synthetic Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/internal/ipc/IPCClientBaseProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/internal/ipc/IPCClientBaseProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/internal/ipc/IPCClientBaseProvider;

    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Landroid/content/ComponentName;

    invoke-static {v0, p1, p2}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->$r8$lambda$aM54Yv1-oK2XWi4kuR_jmbBVnNo(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;Landroid/content/ComponentName;Landroid/content/ComponentName;)I

    move-result p1

    return p1
.end method
