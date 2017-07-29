.class Lcom/android/settings_ex/print/r;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# instance fields
.field final synthetic amJ:Lcom/android/settings_ex/print/q;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/q;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings_ex/print/r;->amJ:Lcom/android/settings_ex/print/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings_ex/print/r;->amJ:Lcom/android/settings_ex/print/q;

    invoke-static {v0}, Lcom/android/settings_ex/print/q;->a(Lcom/android/settings_ex/print/q;)V

    .line 565
    return-void
.end method
