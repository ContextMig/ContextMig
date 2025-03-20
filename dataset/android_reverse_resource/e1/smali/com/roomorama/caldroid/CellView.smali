.class public Lcom/roomorama/caldroid/CellView;
.super Landroid/widget/TextView;
.source "CellView.java"


# static fields
.field public static final STATE_DISABLED:I

.field public static final STATE_PREV_NEXT_MONTH:I

.field public static final STATE_SELECTED:I

.field public static final STATE_TODAY:I


# instance fields
.field private customStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/caldroid/R$attr;->state_date_today:I

    sput v0, Lcom/roomorama/caldroid/CellView;->STATE_TODAY:I

    .line 16
    sget v0, Lcom/caldroid/R$attr;->state_date_selected:I

    sput v0, Lcom/roomorama/caldroid/CellView;->STATE_SELECTED:I

    .line 17
    sget v0, Lcom/caldroid/R$attr;->state_date_disabled:I

    sput v0, Lcom/roomorama/caldroid/CellView;->STATE_DISABLED:I

    .line 18
    sget v0, Lcom/caldroid/R$attr;->state_date_prev_next_month:I

    sput v0, Lcom/roomorama/caldroid/CellView;->STATE_PREV_NEXT_MONTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0}, Lcom/roomorama/caldroid/CellView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Lcom/roomorama/caldroid/CellView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/roomorama/caldroid/CellView;->init()V

    .line 53
    iget-object v5, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    .local v0, "customStateSize":I
    if-lez v0, :cond_1

    .line 55
    add-int v5, p1, v0

    invoke-super {p0, v5}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 56
    .local v1, "drawableState":[I
    new-array v4, v0, [I

    .line 57
    .local v4, "stateArray":[I
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    iget-object v5, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 59
    .local v3, "state":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .end local v3    # "state":Ljava/lang/Integer;
    :cond_0
    invoke-static {v1, v4}, Lcom/roomorama/caldroid/CellView;->mergeDrawableStates([I[I)[I

    .line 65
    .end local v1    # "drawableState":[I
    .end local v2    # "i":I
    .end local v4    # "stateArray":[I
    :goto_1
    return-object v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v1

    goto :goto_1
.end method

.method public resetCustomStates()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roomorama/caldroid/CellView;->customStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    return-void
.end method
