.class public Lcom/adjust/sdk/ObjectInputFilterStream;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# static fields
.field static final ALLOWED_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "java.lang.Boolean"

    const-string v2, "java.lang.Double"

    const-string v3, "java.lang.Enum"

    const-string v4, "java.lang.Float"

    const-string v5, "java.lang.Integer"

    const-string v6, "java.lang.Long"

    const-string v7, "java.lang.Number"

    const-string v8, "java.lang.String"

    const-string v9, "java.util.ArrayList"

    const-string v10, "java.util.HashMap"

    const-string v11, "java.util.LinkedHashMap"

    const-string v12, "java.util.LinkedList"

    const-string v13, "com.adjust.sdk.ActivityKind"

    const-string v14, "com.adjust.sdk.ActivityPackage"

    const-string v15, "com.adjust.sdk.ActivityState"

    const-string v16, "com.adjust.sdk.AdjustAttribution"

    const-string v17, "com.adjust.sdk.EventMetadata"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/adjust/sdk/ObjectInputFilterStream;->ALLOWED_CLASSES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/adjust/sdk/ObjectInputFilterStream;->ALLOWED_CLASSES:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Blocked deserialization"

    invoke-direct {v0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
