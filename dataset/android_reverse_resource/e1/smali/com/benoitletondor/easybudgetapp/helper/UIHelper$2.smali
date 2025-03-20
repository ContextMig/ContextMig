.class final Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3f7c7d253a5a86d4L    # -624.356822293053

    const-string v2, "com/benoitletondor/easybudgetapp/helper/UIHelper$2"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoInit()[Z

    move-result-object v0

    .line 229
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoInit()[Z

    move-result-object v3

    .line 245
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x3

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v3, v2

    .line 250
    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "minusIndex":I
    if-gtz v1, :cond_0

    const/4 v2, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    .line 267
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xb

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 268
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 269
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "lastDotIndex":I
    if-gez v2, :cond_2

    const/16 v2, 0xd

    const/4 v6, 0x1

    aput-boolean v6, v3, v2

    .line 287
    if-gez v5, :cond_4

    const/16 v2, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v3, v2

    .line 292
    :goto_0
    if-gtz v5, :cond_6

    const/16 v2, 0x16

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_1
    const/16 v2, 0x1c

    aput-boolean v8, v3, v2

    .line 305
    .end local v0    # "lastDotIndex":I
    :goto_2
    const/16 v2, 0x1f

    aput-boolean v8, v3, v2

    :goto_3
    return-void

    .line 251
    :cond_0
    const/4 v2, 0x5

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v2

    .line 253
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v2, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    .line 255
    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    .line 257
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-interface {p1, v2, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/16 v2, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :goto_4
    const/16 v2, 0xa

    aput-boolean v8, v3, v2

    goto :goto_3

    .line 261
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    const-string v5, "-"

    invoke-interface {p1, v2, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/16 v2, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 301
    :catch_0
    move-exception v2

    const/16 v5, 0x1d

    aput-boolean v8, v3, v5

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred during text changing watcher. Value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x1e

    aput-boolean v8, v3, v2

    goto :goto_2

    .line 274
    .restart local v0    # "lastDotIndex":I
    :cond_2
    if-ltz v5, :cond_3

    const/16 v5, 0xe

    const/4 v6, 0x1

    :try_start_3
    aput-boolean v6, v3, v5

    .line 276
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p1, v2, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/16 v2, 0xf

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 283
    :goto_5
    const/16 v2, 0x11

    aput-boolean v8, v3, v2

    goto :goto_3

    .line 280
    :cond_3
    add-int/lit8 v5, v2, 0x1

    :try_start_4
    const-string v6, "."

    invoke-interface {p1, v2, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/16 v2, 0x10

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    goto :goto_5

    .line 287
    :cond_4
    if-ne v5, v0, :cond_5

    const/16 v2, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v3, v2

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x14

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    .line 289
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/16 v2, 0x15

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    goto/16 :goto_1

    .line 292
    :cond_6
    const/16 v2, 0x17

    const/4 v6, 0x1

    aput-boolean v6, v3, v2

    .line 294
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x18

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 295
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x2

    if-gt v2, v6, :cond_7

    const/16 v2, 0x19

    const/4 v5, 0x1

    aput-boolean v5, v3, v2

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x1a

    const/4 v6, 0x1

    aput-boolean v6, v3, v2

    .line 297
    add-int/lit8 v2, v5, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {p1, v2, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/16 v2, 0x1b

    const/4 v5, 0x1

    aput-boolean v5, v3, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$2;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
