.class public Lchan/android/app/pocketnote/app/notes/colors/ColorItem;
.super Ljava/lang/Object;
.source "ColorItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final DEFAULT_ITEMS:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;


# instance fields
.field private final color:I

.field private final drawableId:I

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1432fc0629c28027L

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorItem"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    const/16 v1, 0x9

    new-array v1, v1, [Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const/4 v2, 0x0

    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v4, "Red"

    const v5, 0x7f020074

    aput-boolean v7, v0, v8

    .line 9
    invoke-static {v5}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v5

    const v6, 0x7f020074

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v3, "Yellow"

    const v4, 0x7f020075

    aput-boolean v7, v0, v9

    .line 10
    invoke-static {v4}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v4

    const v5, 0x7f020075

    invoke-direct {v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v7

    const/4 v2, 0x2

    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v4, "Orange"

    const v5, 0x7f020076

    aput-boolean v7, v0, v10

    .line 11
    invoke-static {v5}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v5

    const v6, 0x7f020076

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v4, "Grey"

    const v5, 0x7f020077

    aput-boolean v7, v0, v11

    .line 13
    invoke-static {v5}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v5

    const v6, 0x7f020077

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v3, "Green"

    const v4, 0x7f020078

    const/16 v5, 0x8

    aput-boolean v7, v0, v5

    .line 14
    invoke-static {v4}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v4

    const v5, 0x7f020078

    invoke-direct {v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v8

    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v3, "Brown"

    const v4, 0x7f020079

    const/16 v5, 0x9

    aput-boolean v7, v0, v5

    .line 15
    invoke-static {v4}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v4

    const v5, 0x7f020079

    invoke-direct {v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v9

    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v3, "Cyan"

    const v4, 0x7f02007a

    const/16 v5, 0xa

    aput-boolean v7, v0, v5

    .line 17
    invoke-static {v4}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v4

    const v5, 0x7f02007a

    invoke-direct {v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v3, "Purple"

    const v4, 0x7f02007b

    const/16 v5, 0xb

    aput-boolean v7, v0, v5

    .line 18
    invoke-static {v4}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v4

    const v5, 0x7f02007b

    invoke-direct {v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v11

    const/16 v2, 0x8

    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const-string v4, "Blue"

    const v5, 0x7f02007c

    const/16 v6, 0xc

    aput-boolean v7, v0, v6

    .line 19
    invoke-static {v5}, Lchan/android/app/pocketnote/app/AppResources;->getColor(I)I

    move-result v5

    const v6, 0x7f02007c

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->DEFAULT_ITEMS:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    .line 8
    const/16 v1, 0xd

    aput-boolean v7, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->name:Ljava/lang/String;

    .line 30
    iput p2, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->color:I

    .line 31
    iput p3, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->drawableId:I

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->color:I

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getDrawableId()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->drawableId:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->name:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
