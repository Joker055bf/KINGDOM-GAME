.class Lcom/openmediation/sdk/utils/cache/DataBaseUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/cache/DataBaseUtil$DataBaseUtilHolder;
    }
.end annotation


# instance fields
.field private mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/cache/DataBaseUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;-><init>()V

    return-void
.end method

.method public static getSingleton()Lcom/openmediation/sdk/utils/cache/DataBaseUtil;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataBaseUtil$DataBaseUtilHolder;->access$100()Lcom/openmediation/sdk/utils/cache/DataBaseUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "CREATE TABLE IF NOT EXISTS %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->execSQL(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    array-length v1, p3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IN("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_2

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-eq v0, p1, :cond_1

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->execSQL(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method init(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->getSingleton(Landroid/content/Context;Ljava/lang/String;I)Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    return-void
.end method

.method varargs insert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    array-length v1, p3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT INTO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, " UNION ALL "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "SELECT "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p3, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->execSQL(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public varargs query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    array-length v3, p3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_1

    aget-object v5, p3, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p3

    sub-int/2addr v5, v1

    if-eq v4, v5, :cond_0

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "SELECT %s FROM %s WHERE %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->rawQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p3, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "SELECT %s FROM %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v0

    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    aget-object v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    const-string p1, " WHERE "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p1, p3

    if-ge v0, p1, :cond_4

    aget-object p1, p3, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-eq v0, p1, :cond_3

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/openmediation/sdk/utils/cache/DataBaseUtil;->mDataBaseHelper:Lcom/openmediation/sdk/utils/cache/DataBaseHelper;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/utils/cache/DataBaseHelper;->execSQL(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v0
.end method
