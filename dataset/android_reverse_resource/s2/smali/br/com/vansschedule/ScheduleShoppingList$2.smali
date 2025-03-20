.class Lbr/com/vansschedule/ScheduleShoppingList$2;
.super Ljava/lang/Object;
.source "ScheduleShoppingList.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/vansschedule/ScheduleShoppingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lbr/com/vansschedule/ScheduleShoppingList;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansschedule/ScheduleShoppingList$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x700d95d056b4579bL    # -7.413275022852188E-232

    const-string v2, "br/com/vansschedule/ScheduleShoppingList$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansschedule/ScheduleShoppingList$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lbr/com/vansschedule/ScheduleShoppingList;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList$2;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iput-object p1, p0, Lbr/com/vansschedule/ScheduleShoppingList$2;->this$0:Lbr/com/vansschedule/ScheduleShoppingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList$2;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList$2;->this$0:Lbr/com/vansschedule/ScheduleShoppingList;

    invoke-static {v1, p2, p3}, Lbr/com/vansschedule/ScheduleShoppingList;->access$100(Lbr/com/vansschedule/ScheduleShoppingList;II)V

    .line 116
    aput-boolean v2, v0, v2

    return-void
.end method
