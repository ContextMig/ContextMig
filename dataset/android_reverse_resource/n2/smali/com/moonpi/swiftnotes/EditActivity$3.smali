.class Lcom/moonpi/swiftnotes/EditActivity$3;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moonpi/swiftnotes/EditActivity;->initDialogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/moonpi/swiftnotes/EditActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x471e978022ab4f22L    # -1.0477179905183346E-34

    const-string v2, "com/moonpi/swiftnotes/EditActivity$3"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/moonpi/swiftnotes/EditActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 190
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity$3;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 194
    const-string v2, "#%06X"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-boolean v7, v1, v7

    .line 197
    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity$3;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v3}, Lcom/moonpi/swiftnotes/EditActivity;->access$200(Lcom/moonpi/swiftnotes/EditActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    aput-boolean v7, v1, v5

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const/4 v6, 0x3

    aput-boolean v7, v1, v6

    .line 198
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x4

    aput-boolean v7, v1, v5

    .line 197
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x7

    aput-boolean v7, v1, v5

    goto :goto_0

    .line 198
    :cond_0
    const/4 v6, 0x5

    aput-boolean v7, v1, v6

    .line 199
    iget-object v6, p0, Lcom/moonpi/swiftnotes/EditActivity$3;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v6, v5}, Lcom/moonpi/swiftnotes/EditActivity;->access$302(Lcom/moonpi/swiftnotes/EditActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x6

    aput-boolean v7, v1, v5

    goto :goto_1

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity$3;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v0}, Lcom/moonpi/swiftnotes/EditActivity;->access$400(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity$3;->this$0:Lcom/moonpi/swiftnotes/EditActivity;

    invoke-static {v2}, Lcom/moonpi/swiftnotes/EditActivity;->access$300(Lcom/moonpi/swiftnotes/EditActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 203
    const/16 v0, 0x8

    aput-boolean v7, v1, v0

    return-void
.end method
