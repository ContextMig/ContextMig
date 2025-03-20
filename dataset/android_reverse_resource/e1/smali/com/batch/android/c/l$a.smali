.class public final enum Lcom/batch/android/c/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/c/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/c/l$a;

.field public static final enum b:Lcom/batch/android/c/l$a;

.field public static final enum c:Lcom/batch/android/c/l$a;

.field public static final enum d:Lcom/batch/android/c/l$a;

.field public static final enum e:Lcom/batch/android/c/l$a;

.field public static final enum f:Lcom/batch/android/c/l$a;

.field private static final synthetic g:[Lcom/batch/android/c/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->a:Lcom/batch/android/c/l$a;

    .line 482
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->b:Lcom/batch/android/c/l$a;

    .line 483
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v5}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->c:Lcom/batch/android/c/l$a;

    .line 484
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v6}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->d:Lcom/batch/android/c/l$a;

    .line 485
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v7}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->e:Lcom/batch/android/c/l$a;

    .line 486
    new-instance v0, Lcom/batch/android/c/l$a;

    const-string v1, "MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batch/android/c/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/c/l$a;->f:Lcom/batch/android/c/l$a;

    .line 479
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/batch/android/c/l$a;

    sget-object v1, Lcom/batch/android/c/l$a;->a:Lcom/batch/android/c/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batch/android/c/l$a;->b:Lcom/batch/android/c/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batch/android/c/l$a;->c:Lcom/batch/android/c/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/c/l$a;->d:Lcom/batch/android/c/l$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batch/android/c/l$a;->e:Lcom/batch/android/c/l$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batch/android/c/l$a;->f:Lcom/batch/android/c/l$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/c/l$a;->g:[Lcom/batch/android/c/l$a;

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
    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/c/l$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 479
    const-class v0, Lcom/batch/android/c/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c/l$a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/c/l$a;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/batch/android/c/l$a;->g:[Lcom/batch/android/c/l$a;

    invoke-virtual {v0}, [Lcom/batch/android/c/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/c/l$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 490
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 508
    :goto_0
    return v0

    .line 495
    :cond_0
    sget-object v1, Lcom/batch/android/c/l$1;->a:[I

    invoke-virtual {p0}, Lcom/batch/android/c/l$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 502
    :pswitch_0
    const/4 v0, -0x2

    goto :goto_0

    .line 504
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 506
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 508
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/batch/android/c/l$1;->a:[I

    invoke-virtual {p0}, Lcom/batch/android/c/l$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    .line 521
    :pswitch_0
    const/4 v0, -0x2

    goto :goto_0

    .line 523
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 525
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 527
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
