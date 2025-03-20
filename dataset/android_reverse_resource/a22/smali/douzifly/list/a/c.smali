.class public final Ldouzifly/list/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldouzifly/list/a/c; = null

.field private static final b:Ljava/lang/String; = "BackupHelper"

.field private static final c:I = 0x1

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static k:I

.field private static final l:Lb/b;

.field private static final synthetic m:[Lb/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/a/c;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "needCheckPermisson"

    const-string v5, "getNeedCheckPermisson()Z"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/a/c;->m:[Lb/f/e;

    new-instance v0, Ldouzifly/list/a/c;

    invoke-direct {v0}, Ldouzifly/list/a/c;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ldouzifly/list/a/c;

    sput-object p0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    const-string v0, "BackupHelper"

    sput-object v0, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    sput v1, Ldouzifly/list/a/c;->c:I

    sput v1, Ldouzifly/list/a/c;->d:I

    sput v2, Ldouzifly/list/a/c;->e:I

    sput v3, Ldouzifly/list/a/c;->f:I

    sput v1, Ldouzifly/list/a/c;->h:I

    sput v2, Ldouzifly/list/a/c;->i:I

    sput v3, Ldouzifly/list/a/c;->j:I

    sget v0, Ldouzifly/list/a/c;->h:I

    sput v0, Ldouzifly/list/a/c;->k:I

    sget-object v0, Ldouzifly/list/a/c$c;->a:Ldouzifly/list/a/c$c;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/a/c;->l:Lb/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Ldouzifly/list/a/c;->c:I

    return v0
.end method

.method public final a(Landroid/app/Activity;II)I
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget v0, Ldouzifly/list/a/c;->h:I

    sput v0, Ldouzifly/list/a/c;->k:I

    sget v0, Ldouzifly/list/a/c;->h:I

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v1, v0

    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ldouzifly/list/a/c$a;

    invoke-direct {v0, p1, v1, p3}, Ldouzifly/list/a/c$a;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    :goto_2
    sget v0, Ldouzifly/list/a/c;->j:I

    sput v0, Ldouzifly/list/a/c;->k:I

    sget v0, Ldouzifly/list/a/c;->j:I

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    nop

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    sget v1, Ldouzifly/list/a/c;->c:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    sput p3, Ldouzifly/list/a/c;->g:I

    goto :goto_2

    :cond_3
    sget v0, Ldouzifly/list/a/c;->h:I

    sput v0, Ldouzifly/list/a/c;->k:I

    sget v0, Ldouzifly/list/a/c;->h:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    const-string v2, "dbName"

    invoke-static {p1, v2}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activity"

    invoke-static {p2, v2}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    sget v3, Ldouzifly/list/a/c;->e:I

    invoke-virtual {p0, p2, v2, v3}, Ldouzifly/list/a/c;->a(Landroid/app/Activity;II)I

    move-result v2

    sget v3, Ldouzifly/list/a/c;->h:I

    if-eq v2, v3, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    nop

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/io/File;

    sget-object v3, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v3}, Ldouzifly/list/d/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "can\'t mkdir parent file"

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v3, "backup file exists, delete it"

    sget-object v4, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/douzifly.list/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v8

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    const-string v2, "backup success"

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;)Ljava/util/List;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Ldouzifly/list/a/c;->d:I

    invoke-virtual {p0, p1, v1, v0}, Ldouzifly/list/a/c;->a(Landroid/app/Activity;II)I

    move-result v0

    sget v2, Ldouzifly/list/a/c;->h:I

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Ldouzifly/list/a/a;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ldouzifly/list/a/a;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-array v2, v1, [Ldouzifly/list/a/a;

    invoke-static {v2}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v0, [Ljava/lang/Object;

    nop

    move v3, v1

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_3

    aget-object v1, v0, v3

    check-cast v1, Ljava/io/File;

    sget-object v4, Ldouzifly/list/a/a;->a:Ldouzifly/list/a/b;

    const-string v5, "file"

    invoke-static {v1, v5}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ldouzifly/list/a/b;->a(Ljava/io/File;)Ldouzifly/list/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lb/g;->a:Lb/g;

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    nop

    new-instance v1, Ldouzifly/list/a/c$b;

    invoke-direct {v1}, Ldouzifly/list/a/c$b;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lb/a/d;->a(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    check-cast v2, Ljava/util/List;

    move-object v0, v2

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    sput p1, Ldouzifly/list/a/c;->g:I

    return-void
.end method

.method public final a([Ljava/lang/String;[ILb/d/a/b;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "reDo"

    invoke-static {p3, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    nop

    array-length v0, p2

    :goto_0
    if-lez v0, :cond_3

    if-eqz p2, :cond_2

    aget v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Ldouzifly/list/a/c;->h:I

    sput v0, Ldouzifly/list/a/c;->k:I

    sget v0, Ldouzifly/list/a/c;->g:I

    if-lez v0, :cond_0

    sget v0, Ldouzifly/list/a/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lb/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sput v1, Ldouzifly/list/a/c;->g:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget v0, Ldouzifly/list/a/c;->k:I

    sget v2, Ldouzifly/list/a/c;->i:I

    if-ne v0, v2, :cond_4

    :cond_4
    sput v1, Ldouzifly/list/a/c;->g:I

    goto :goto_2
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 10

    const/4 v9, 0x0

    const-string v2, "backupDB"

    invoke-static {p1, v2}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "restoreDbName"

    invoke-static {p2, v2}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activity"

    invoke-static {p3, v2}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Ldouzifly/list/a/c;->f:I

    invoke-virtual {p0, p3, v9, v2}, Ldouzifly/list/a/c;->a(Landroid/app/Activity;II)I

    move-result v2

    sget v3, Ldouzifly/list/a/c;->h:I

    if-eq v2, v3, :cond_0

    move v2, v9

    :goto_0
    return v2

    :cond_0
    nop

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/douzifly.list/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete current success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    move v2, v9

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v0, v8

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    const-string v2, "restore success"

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    sget-object v3, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v3}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldouzifly/list/d/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ldouzifly/list/a/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    sget v0, Ldouzifly/list/a/c;->h:I

    return v0
.end method

.method public final c()I
    .locals 1

    sget v0, Ldouzifly/list/a/c;->k:I

    return v0
.end method

.method public final d()Z
    .locals 3

    sget-object v0, Ldouzifly/list/a/c;->l:Lb/b;

    sget-object v1, Ldouzifly/list/a/c;->m:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
