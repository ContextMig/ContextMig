.class synthetic Lcom/dropbox/sync/android/DbxFileSystem$5;
.super Ljava/lang/Object;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

.field static final synthetic $SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

.field static final synthetic $SwitchMap$com$dropbox$sync$android$DbxFileSystem$RevPref:[I

.field static final synthetic $SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbFormat:[I

.field static final synthetic $SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1189
    invoke-static {}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->values()[Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbFormat:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbFormat:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->JPG:Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbFormat:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->PNG:Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    .line 1169
    :goto_1
    invoke-static {}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->values()[Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    :try_start_2
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XS:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->S:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->M:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->L:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$ThumbSize:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->XL:Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$ThumbSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    .line 1153
    :goto_6
    invoke-static {}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->values()[Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$RevPref:[I

    :try_start_7
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$RevPref:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_LATEST:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$RevPref:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->PREFER_CACHED:Lcom/dropbox/sync/android/DbxFileSystem$RevPref;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$RevPref;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    .line 1140
    :goto_8
    invoke-static {}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->values()[Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

    :try_start_9
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_EXISTING:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->CREATE_NEW:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$CreatePref:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->OPEN_OR_CREATE:Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$CreatePref;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    .line 1115
    :goto_b
    invoke-static {}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->values()[Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

    :try_start_c
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_ONLY:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_CHILD:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Lcom/dropbox/sync/android/DbxFileSystem$5;->$SwitchMap$com$dropbox$sync$android$DbxFileSystem$PathListener$Mode:[I

    sget-object v1, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->PATH_OR_DESCENDANT:Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFileSystem$PathListener$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    .line 1140
    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    .line 1153
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    .line 1169
    :catch_8
    move-exception v0

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    .line 1189
    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
