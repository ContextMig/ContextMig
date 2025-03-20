.class public Lcom/batch/android/json/JSONTokener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 116
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 117
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    sparse-switch v0, :sswitch_data_0

    .line 166
    :cond_0
    :goto_1
    return v0

    .line 126
    :sswitch_1
    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v3, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 130
    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 131
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 134
    :sswitch_2
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 135
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    const-string v2, "*/"

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 136
    if-ne v0, v1, :cond_1

    .line 137
    const-string v0, "Unterminated comment"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    goto :goto_0

    .line 144
    :sswitch_3
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 145
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->b()V

    goto :goto_0

    .line 158
    :sswitch_4
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->b()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 166
    goto :goto_1

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 131
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 336
    :goto_0
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 337
    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 338
    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_1
    return-object v0

    .line 336
    :cond_1
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 175
    :goto_0
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 178
    :cond_0
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 182
    :cond_1
    return-void

    .line 175
    :cond_2
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    goto :goto_0
.end method

.method private c()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 239
    sparse-switch v0, :sswitch_data_0

    .line 271
    :goto_0
    return v0

    .line 241
    :sswitch_0
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 242
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 247
    const/16 v1, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-char v0, v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 253
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 256
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 259
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 262
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 265
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private d()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 281
    const-string v0, "{}[]/\\:,=;# \t\u000c"

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONTokener;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const-string v0, "Expected literal value"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 285
    :cond_0
    const-string v0, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 327
    :goto_0
    return-object v0

    .line 287
    :cond_1
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 294
    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 295
    const/16 v0, 0xa

    .line 297
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    const/16 v2, 0x10

    .line 305
    :goto_1
    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 306
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    const-wide/32 v4, -0x80000000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    .line 307
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_8

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    const/16 v2, 0x8

    goto :goto_1

    .line 309
    :cond_6
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 322
    :cond_7
    :try_start_2
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 327
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "hex"    # C

    .prologue
    .line 600
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 601
    add-int/lit8 v0, p0, -0x30

    .line 607
    :goto_0
    return v0

    .line 602
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 603
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 604
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 605
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 353
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v0

    .line 354
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 388
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 357
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 361
    :cond_1
    :sswitch_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 363
    if-nez v0, :cond_2

    .line 364
    const-string v0, "Names cannot be null"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 366
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Names must be strings, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 376
    :cond_3
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v2

    .line 377
    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \':\' after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 380
    :cond_4
    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v3, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_5

    .line 381
    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 384
    :cond_5
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 386
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 393
    const-string v0, "Unterminated object"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    :sswitch_1
    move-object v0, v1

    .line 388
    goto/16 :goto_0

    .line 386
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private f()Lcom/batch/android/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 405
    new-instance v2, Lcom/batch/android/json/JSONArray;

    invoke-direct {v2}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 408
    const/4 v0, 0x0

    .line 411
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 426
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 429
    invoke-virtual {p0}, Lcom/batch/android/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    .line 431
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 439
    const-string v0, "Unterminated array"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 413
    :sswitch_0
    const-string v0, "Unterminated array"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 415
    :sswitch_1
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    :cond_0
    move-object v0, v2

    .line 433
    :goto_1
    return-object v0

    .line 422
    :sswitch_2
    invoke-virtual {v2, v4}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    move v0, v1

    .line 424
    goto :goto_0

    :sswitch_3
    move-object v0, v2

    .line 433
    goto :goto_1

    :sswitch_4
    move v0, v1

    .line 437
    goto :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 431
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public back()V
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 590
    :cond_0
    return-void
.end method

.method public more()Z
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()C
    .locals 3

    .prologue
    .line 481
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/batch/android/json/JSONTokener;->next()C

    move-result v0

    .line 490
    if-eq v0, p1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 493
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 519
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is out of bounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 524
    return-object v0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v0

    .line 504
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-char v0, v0

    goto :goto_0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 201
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 203
    :goto_0
    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v3, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 204
    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 205
    if-ne v2, p1, :cond_1

    .line 206
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 211
    :goto_1
    return-object v0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 215
    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5

    .line 216
    iget v2, p0, Lcom/batch/android/json/JSONTokener;->b:I

    iget-object v3, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 217
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 219
    :cond_2
    if-nez v0, :cond_3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v3, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_2
    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 226
    goto :goto_0

    .line 228
    :cond_4
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    :cond_5
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_2
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 1
    .param p1, "excluded"    # C

    .prologue
    .line 554
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/json/JSONTokener;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "excluded"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "excluded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/json/JSONTokener;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->a()I

    move-result v0

    .line 95
    sparse-switch v0, :sswitch_data_0

    .line 110
    iget v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 111
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->d()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :sswitch_0
    const-string v0, "End of input"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;

    move-result-object v0

    throw v0

    .line 100
    :sswitch_1
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_2
    invoke-direct {p0}, Lcom/batch/android/json/JSONTokener;->f()Lcom/batch/android/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_3
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 2
    .param p1, "thru"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 564
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 565
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public skipTo(C)C
    .locals 2
    .param p1, "to"    # C

    .prologue
    .line 573
    iget-object v0, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 574
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 575
    iput v0, p0, Lcom/batch/android/json/JSONTokener;->b:I

    .line 578
    .end local p1    # "to":C
    :goto_0
    return p1

    .restart local p1    # "to":C
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lcom/batch/android/json/JSONException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 449
    new-instance v0, Lcom/batch/android/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/json/JSONTokener;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/json/JSONTokener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
