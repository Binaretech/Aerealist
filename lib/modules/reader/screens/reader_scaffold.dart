part of 'reader_view.dart';

class _ReaderScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderBloc, ReaderState>(builder: (context, state) {
      if (state is ReaderLoadedState) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.title),
          ),
          drawer: ReaderDrawerTabs(
            chapters: state.chapters,
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Text(state.currentChapter.Title),
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
            ),
          ),
        );
      }
      return Scaffold(
        body: LinearProgressIndicator(),
      );
    });
  }
}