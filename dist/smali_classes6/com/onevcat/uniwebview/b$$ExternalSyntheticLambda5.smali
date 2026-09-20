.class public final synthetic Lcom/onevcat/uniwebview/b$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/PermissionRequest;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/b$$ExternalSyntheticLambda5;->f$0:Landroid/webkit/PermissionRequest;

    iput-object p2, p0, Lcom/onevcat/uniwebview/b$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/b$$ExternalSyntheticLambda5;->f$0:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/onevcat/uniwebview/b$$ExternalSyntheticLambda5;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/onevcat/uniwebview/b;->a(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
