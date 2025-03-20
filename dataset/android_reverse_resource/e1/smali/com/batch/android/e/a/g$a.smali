.class final enum Lcom/batch/android/e/a/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/e/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/e/a/g$a;

.field public static final enum b:Lcom/batch/android/e/a/g$a;

.field public static final enum c:Lcom/batch/android/e/a/g$a;

.field public static final enum d:Lcom/batch/android/e/a/g$a;

.field public static final enum e:Lcom/batch/android/e/a/g$a;

.field public static final enum f:Lcom/batch/android/e/a/g$a;

.field private static final synthetic g:[Lcom/batch/android/e/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->a:Lcom/batch/android/e/a/g$a;

    .line 306
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "BLOCK_START"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->b:Lcom/batch/android/e/a/g$a;

    .line 307
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "BLOCK_END"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->c:Lcom/batch/android/e/a/g$a;

    .line 308
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "PROPERTY_SEPARATOR"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->d:Lcom/batch/android/e/a/g$a;

    .line 309
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "PROPERTY_END"

    invoke-direct {v0, v1, v7}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->e:Lcom/batch/android/e/a/g$a;

    .line 310
    new-instance v0, Lcom/batch/android/e/a/g$a;

    const-string v1, "NEW_LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/e/a/g$a;->f:Lcom/batch/android/e/a/g$a;

    .line 303
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/batch/android/e/a/g$a;

    sget-object v1, Lcom/batch/android/e/a/g$a;->a:Lcom/batch/android/e/a/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/e/a/g$a;->b:Lcom/batch/android/e/a/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/e/a/g$a;->c:Lcom/batch/android/e/a/g$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/e/a/g$a;->d:Lcom/batch/android/e/a/g$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batch/android/e/a/g$a;->e:Lcom/batch/android/e/a/g$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batch/android/e/a/g$a;->f:Lcom/batch/android/e/a/g$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/e/a/g$a;->g:[Lcom/batch/android/e/a/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(C)Lcom/batch/android/e/a/g$a;
    .locals 1

    .prologue
    .line 314
    sparse-switch p0, :sswitch_data_0

    .line 327
    sget-object v0, Lcom/batch/android/e/a/g$a;->a:Lcom/batch/android/e/a/g$a;

    :goto_0
    return-object v0

    .line 317
    :sswitch_0
    sget-object v0, Lcom/batch/android/e/a/g$a;->b:Lcom/batch/android/e/a/g$a;

    goto :goto_0

    .line 319
    :sswitch_1
    sget-object v0, Lcom/batch/android/e/a/g$a;->c:Lcom/batch/android/e/a/g$a;

    goto :goto_0

    .line 321
    :sswitch_2
    sget-object v0, Lcom/batch/android/e/a/g$a;->e:Lcom/batch/android/e/a/g$a;

    goto :goto_0

    .line 323
    :sswitch_3
    sget-object v0, Lcom/batch/android/e/a/g$a;->d:Lcom/batch/android/e/a/g$a;

    goto :goto_0

    .line 325
    :sswitch_4
    sget-object v0, Lcom/batch/android/e/a/g$a;->f:Lcom/batch/android/e/a/g$a;

    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x3a -> :sswitch_3
        0x3b -> :sswitch_2
        0x7b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/e/a/g$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const-class v0, Lcom/batch/android/e/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/g$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/e/a/g$a;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/batch/android/e/a/g$a;->g:[Lcom/batch/android/e/a/g$a;

    invoke-virtual {v0}, [Lcom/batch/android/e/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/e/a/g$a;

    return-object v0
.end method
