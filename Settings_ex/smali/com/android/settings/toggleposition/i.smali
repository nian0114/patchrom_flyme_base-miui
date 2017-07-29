.class Lcom/android/settings_ex/toggleposition/i;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FixedDividerSortableListView.java"


# instance fields
.field final synthetic ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings_ex/toggleposition/i;->ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/toggleposition/i;->ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;

    invoke-static {v0, p1}, Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;->a(Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;Landroid/view/MotionEvent;)Z

    .line 441
    return-void
.end method
