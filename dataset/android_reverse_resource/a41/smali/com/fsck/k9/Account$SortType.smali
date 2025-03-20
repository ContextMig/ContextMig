.class public final enum Lcom/fsck/k9/Account$SortType;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_DATE:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_SENDER:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

.field public static final enum SORT_UNREAD:Lcom/fsck/k9/Account$SortType;


# instance fields
.field private ascendingToast:I

.field private defaultAscending:Z

.field private descendingToast:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 131
    new-instance v0, Lcom/fsck/k9/Account$SortType;

    const-string v1, "SORT_DATE"

    const v3, 0x7f070379

    const v4, 0x7f07037c

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    .line 132
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_ARRIVAL"

    const v6, 0x7f070379

    const v7, 0x7f07037c

    move v5, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    .line 133
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_SUBJECT"

    const v6, 0x7f07037f

    const v7, 0x7f070380

    move v5, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

    .line 134
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_SENDER"

    const v6, 0x7f07037d

    const v7, 0x7f07037e

    move v5, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_SENDER:Lcom/fsck/k9/Account$SortType;

    .line 135
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_UNREAD"

    const v6, 0x7f070382

    const v7, 0x7f070383

    move v5, v12

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_UNREAD:Lcom/fsck/k9/Account$SortType;

    .line 136
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_FLAGGED"

    const/4 v5, 0x5

    const v6, 0x7f07037a

    const v7, 0x7f07037b

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

    .line 137
    new-instance v3, Lcom/fsck/k9/Account$SortType;

    const-string v4, "SORT_ATTACHMENT"

    const/4 v5, 0x6

    const v6, 0x7f070370

    const v7, 0x7f070381

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Account$SortType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/fsck/k9/Account$SortType;->SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

    .line 130
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fsck/k9/Account$SortType;

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_ARRIVAL:Lcom/fsck/k9/Account$SortType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_SUBJECT:Lcom/fsck/k9/Account$SortType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_SENDER:Lcom/fsck/k9/Account$SortType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fsck/k9/Account$SortType;->SORT_UNREAD:Lcom/fsck/k9/Account$SortType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_FLAGGED:Lcom/fsck/k9/Account$SortType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/Account$SortType;->SORT_ATTACHMENT:Lcom/fsck/k9/Account$SortType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/Account$SortType;->$VALUES:[Lcom/fsck/k9/Account$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "ascending"    # I
    .param p4, "descending"    # I
    .param p5, "ndefaultAscending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/fsck/k9/Account$SortType;->ascendingToast:I

    .line 145
    iput p4, p0, Lcom/fsck/k9/Account$SortType;->descendingToast:I

    .line 146
    iput-boolean p5, p0, Lcom/fsck/k9/Account$SortType;->defaultAscending:Z

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$SortType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/fsck/k9/Account$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$SortType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$SortType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/fsck/k9/Account$SortType;->$VALUES:[Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$SortType;

    return-object v0
.end method


# virtual methods
.method public getToast(Z)I
    .locals 1
    .param p1, "ascending"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fsck/k9/Account$SortType;->ascendingToast:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fsck/k9/Account$SortType;->descendingToast:I

    goto :goto_0
.end method

.method public isDefaultAscending()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/fsck/k9/Account$SortType;->defaultAscending:Z

    return v0
.end method
