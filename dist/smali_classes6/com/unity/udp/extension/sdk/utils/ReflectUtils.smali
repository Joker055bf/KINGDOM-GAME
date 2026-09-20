.class public Lcom/unity/udp/extension/sdk/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->type:Ljava/lang/Class;

    .line 16
    iput-object p2, p0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->object:Ljava/lang/Object;

    return-void
.end method

.method private accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    .line 73
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    return-object p1
.end method

.method private getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 53
    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 56
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 37
    :try_start_0
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public static reflect(Ljava/lang/Object;)Lcom/unity/udp/extension/sdk/utils/ReflectUtils;
    .locals 2

    .line 20
    new-instance v0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;

    if-nez p0, :cond_0

    const-class v1, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method private type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->type:Ljava/lang/Class;

    return-object v0
.end method

.method private unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public field(Ljava/lang/String;Ljava/lang/Object;)Lcom/unity/udp/extension/sdk/utils/ReflectUtils;
    .locals 1

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ReflectUtils;->object:Ljava/lang/Object;

    return-object v0
.end method
