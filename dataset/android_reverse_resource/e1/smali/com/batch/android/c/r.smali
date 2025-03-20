.class Lcom/batch/android/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/q$a;


# static fields
.field private static final c:Ljava/lang/String; = "bastion_o"


# instance fields
.field protected a:Landroid/content/SharedPreferences;

.field protected b:Landroid/content/SharedPreferences$Editor;

.field private d:Lcom/batch/android/c/d;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bastion_o"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/r;->a:Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Lcom/batch/android/c/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/r;->b:Landroid/content/SharedPreferences$Editor;

    .line 57
    sget-object v0, Lcom/batch/android/c/e$a;->c:Lcom/batch/android/c/e$a;

    invoke-static {v0}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;)Lcom/batch/android/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/r;->d:Lcom/batch/android/c/d;

    .line 58
    return-void
.end method

.method private a(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/batch/android/c/r;->d:Lcom/batch/android/c/d;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/batch/android/c/d;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 128
    if-eqz v1, :cond_1

    .line 132
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 144
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 124
    :cond_2
    :goto_1
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    const-string v2, "Error while closing ObjectOutputStream"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    :catch_1
    move-exception v1

    .line 148
    const-string v2, "Error while closing ByteArrayOutputStream"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 132
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 140
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 144
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 149
    :cond_4
    :goto_4
    throw v0

    .line 134
    :catch_2
    move-exception v1

    .line 136
    const-string v3, "Error while closing ObjectOutputStream"

    invoke-static {v3, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 146
    :catch_3
    move-exception v1

    .line 148
    const-string v2, "Error while closing ByteArrayOutputStream"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 128
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/c/r;->d:Lcom/batch/android/c/d;

    invoke-interface {v1, p1}, Lcom/batch/android/c/d;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 175
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 182
    if-eqz v2, :cond_2

    .line 186
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 194
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 198
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 202
    const-string v2, "Error while closing ObjectInputStream"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :catch_1
    move-exception v2

    .line 190
    const-string v3, "Error while closing ArrayInputStream"

    invoke-static {v3, v2}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    if-eqz v2, :cond_3

    .line 186
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 194
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 198
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 203
    :cond_4
    :goto_4
    throw v0

    .line 188
    :catch_2
    move-exception v2

    .line 190
    const-string v3, "Error while closing ArrayInputStream"

    invoke-static {v3, v2}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 200
    :catch_3
    move-exception v1

    .line 202
    const-string v2, "Error while closing ObjectInputStream"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 182
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/batch/android/c/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/r;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p2}, Lcom/batch/android/c/r;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while persisting object for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/r;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/c/r;->d(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/batch/android/c/r;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method
