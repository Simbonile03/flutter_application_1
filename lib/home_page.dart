import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildHomeContent() {
    return Column(
      children: [
        // Dashboard Title
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 19),
          child: Text(
            'Dashboard',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xE82A2636),
            ),
          ),
        ),
        
        // Sales Overview
        Container(
          margin: EdgeInsets.fromLTRB(18, 0, 19, 26),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF000000)),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0x7DD9D9D9), Color(0x7D737373)],
              stops: <double>[0.895, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: Container(
            height: 144,
            padding: EdgeInsets.fromLTRB(24, 15, 24, 0),
            child: Text(
              'Sales Overview',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF675F5F),
              ),
            ),
          ),
        ),
        
        // Tasks and Opportunities
        Container(
          margin: EdgeInsets.fromLTRB(18, 0, 19, 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tasks Container
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF000000)),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0x7DD9D9D9), Color(0x7D737373)],
                      stops: <double>[0.895, 1],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    height: 85,
                    padding: EdgeInsets.fromLTRB(12, 9, 12, 0),
                    child: Text(
                      'Tasks',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF675F5F),
                      ),
                    ),
                  ),
                ),
              ),
              
              // Opportunities Container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF000000)),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0x7DD9D9D9), Color(0x7D737373)],
                      stops: <double>[0.895, 1],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    height: 85,
                    padding: EdgeInsets.fromLTRB(12, 9, 17.8, 0),
                    child: Text(
                      'Opportunities',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF675F5F),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // Recent Activities
        Container(
          margin: EdgeInsets.fromLTRB(19, 0, 20, 67),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF000000)),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0x7DD9D9D9), Color(0x7D737373)],
              stops: <double>[0.895, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(12, 14, 12, 55),
            child: Text(
              'Recent activities',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF675F5F),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactsContent() {
    return Center(child: Text('Contacts Page'));
  }

  Widget _buildNotesContent() {
    return Center(child: Text('Notes Page'));
  }

  Widget _buildSettingsContent() {
    return Center(child: Text('Settings Page'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildHomeContent(),
          _buildContactsContent(),
          _buildNotesContent(),
          _buildSettingsContent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/vectors/icon_3_x2.svg', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/vectors/icon_x2.svg', width: 24, height: 24),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/vectors/icon_14_x2.svg', width: 24, height: 24),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/vectors/icon_13_x2.svg', width: 24, height: 24),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}